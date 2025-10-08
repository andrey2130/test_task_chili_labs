import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/failure/network_failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifts_search_params.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/usecase/search_gifts_usecase.dart';

part 'gifts_event.dart';
part 'gifts_state.dart';
part 'gifts_bloc.freezed.dart';

@injectable
class GiftsBloc extends Bloc<GiftsEvent, GiftsState> {
  final SearchGiftsUseCase _searchGiftsUseCase;
  final Talker _talker;
  List<GiftsEntity> _currentGifts = [];
  String _currentQuery = '';
  int _currentOffset = 0;
  static const int _defaultLimit = 10;

  GiftsBloc(this._searchGiftsUseCase, this._talker)
    : super(const GiftsState.initial()) {
    on<SearchGifsEvent>(
      _onSearchGifts,
      transformer: _debounceEventTransformer(const Duration(milliseconds: 900)),
    );
    on<LoadMoreGiftsEvent>(_onLoadMoreGifts);
    on<ClearGiftsEvent>(_onClearGifts);
  }

  Future<void> _onSearchGifts(
    SearchGifsEvent event,
    Emitter<GiftsState> emit,
  ) async {
    await _performSearch(event.params, emit, isNewSearch: true);
  }

  Future<void> _onLoadMoreGifts(
    LoadMoreGiftsEvent event,
    Emitter<GiftsState> emit,
  ) async {
    if (state is GiftsLoaded && _currentQuery.isNotEmpty) {
      final currentState = state as GiftsLoaded;
      emit(GiftsState.loadingMore(currentState.gifts));

      final params = SearchGifsParams(
        query: _currentQuery,
        limit: _defaultLimit,
        offset: _currentOffset,
      );

      await _performSearch(params, emit, isNewSearch: false);
    }
  }

  Future<void> _onClearGifts(
    ClearGiftsEvent event,
    Emitter<GiftsState> emit,
  ) async {
    _currentGifts.clear();
    _currentQuery = '';
    _currentOffset = 0;
    emit(const GiftsState.initial());
  }

  Future<void> _performSearch(
    SearchGifsParams params,
    Emitter<GiftsState> emit, {
    required bool isNewSearch,
  }) async {
    try {
      if (isNewSearch) {
        emit(const GiftsState.loading());
        _currentGifts.clear();
        _currentOffset = 0;
        _currentQuery = params.query;
      }

      final result = await _searchGiftsUseCase(params);

      result.fold(
        (failure) {
          _talker.error('Search failed: ${failure.message}');
          final networkFailure = _parseFailureToNetworkFailure(failure.message);
          emit(GiftsState.error(networkFailure));
        },
        (gifts) {
          if (isNewSearch) {
            _currentGifts = List.from(gifts);
          } else {
            _currentGifts.addAll(gifts);
          }
          _currentOffset += gifts.length;

          emit(GiftsState.loaded(_currentGifts));
        },
      );
    } catch (e) {
      _talker.error('Unexpected error during search: $e');
      emit(
        const GiftsState.error(
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
