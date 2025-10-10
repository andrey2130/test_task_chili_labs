import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/failure/network_failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifs_search_params.dart';

import 'package:test_task_chili_labs/feature/gifs_list/domain/usecase/search_gifs_usecase.dart';

part 'gifs_event.dart';
part 'gifs_state.dart';
part 'gifs_bloc.freezed.dart';

@injectable
class GifsBloc extends Bloc<GifsEvent, GifsState> {
  final SearchGifsUseCase _searchGifsUseCase;
  final Talker _talker;
  List<GifsEntity> _currentGifs = [];
  String _currentQuery = '';
  int _currentOffset = 0;
  static const int _defaultLimit = 10;

  GifsBloc(this._searchGifsUseCase, this._talker)
    : super(const GifsState.initial()) {
    on<SearchGifsEvent>(
      _onSearchGifs,
      transformer: _debounceEventTransformer(const Duration(milliseconds: 500)),
    );
    on<LoadMoreGifsEvent>(_onLoadMoreGifs);
    on<ClearGifsEvent>(_onClearGifs);
  }

  Future<void> _onSearchGifs(
    SearchGifsEvent event,
    Emitter<GifsState> emit,
  ) async {
    await _performSearch(event.params, emit, isNewSearch: true);
  }

  Future<void> _onLoadMoreGifs(
    LoadMoreGifsEvent event,
    Emitter<GifsState> emit,
  ) async {
    if (state is GifsLoaded && _currentQuery.isNotEmpty) {
      final currentState = state as GifsLoaded;
      emit(GifsState.loadingMore(currentState.gifs));

      final params = SearchGifsParams(
        query: _currentQuery,
        limit: _defaultLimit,
        offset: _currentOffset,
      );

      await _performSearch(params, emit, isNewSearch: false);
    }
  }

  Future<void> _onClearGifs(
    ClearGifsEvent event,
    Emitter<GifsState> emit,
  ) async {
    _currentGifs.clear();
    _currentQuery = '';
    _currentOffset = 0;
    emit(const GifsState.initial());
  }

  Future<void> _performSearch(
    SearchGifsParams params,
    Emitter<GifsState> emit, {
    required bool isNewSearch,
  }) async {
    try {
      if (isNewSearch) {
        emit(const GifsState.loading());
        _currentGifs.clear();
        _currentOffset = 0;
        _currentQuery = params.query;
      }

      final result = await _searchGifsUseCase(params);

      result.fold(
        (failure) {
          _talker.error('Search failed: ${failure.message}');
          final networkFailure = _parseFailureToNetworkFailure(failure.message);
          emit(GifsState.error(networkFailure));
        },
        (gif) {
          if (isNewSearch) {
            _currentGifs = List.from(gif);
          } else {
            final existingIds = _currentGifs.map((e) => e.id).toSet();
            final uniqueGifs = gif
                .where((gif) => !existingIds.contains(gif.id))
                .toList();
            _currentGifs.addAll(uniqueGifs);
          }
          _currentOffset += gif.length;

          emit(GifsState.loaded(_currentGifs));
        },
      );
    } catch (e) {
      _talker.error('Unexpected error during search: $e');
      emit(
        const GifsState.error(
          NetworkFailure.unknown('An unexpected error occurred'),
        ),
      );
    }
  }

  NetworkFailure _parseFailureToNetworkFailure(String message) {
    if (message.contains('Failed host lookup') ||
        message.contains('No Internet')) {
      return const NetworkFailure.noInternet();
    } else if (message.contains('timeout') || message.contains('Timeout')) {
      return const NetworkFailure.timeout();
    } else if (message.contains('Server error') || message.contains('HTTP')) {
      return NetworkFailure.serverError(message);
    } else {
      return NetworkFailure.unknown(message);
    }
  }
}

EventTransformer<E> _debounceEventTransformer<E>(Duration duration) {
  return (events, mapper) {
    final controller = StreamController<E>();
    Timer? timer;
    late final StreamSubscription<E> subscription;

    subscription = events.listen(
      (event) {
        timer?.cancel();
        timer = Timer(duration, () => controller.add(event));
      },
      onError: controller.addError,
      onDone: () {
        timer?.cancel();
        controller.close();
      },
      cancelOnError: false,
    );

    controller.onCancel = () async {
      timer?.cancel();
      await subscription.cancel();
    };

    return controller.stream.asyncExpand(mapper);
  };
}
