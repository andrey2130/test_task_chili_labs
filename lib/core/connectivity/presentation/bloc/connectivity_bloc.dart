import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../usecases/usecase.dart';
import '../../domain/usecases/watch_connectivity_usecase.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';
part 'connectivity_bloc.freezed.dart';

@injectable
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final WatchConnectivityUseCase watchConnectivityUseCase;
  StreamSubscription<bool>? _subscription;

  ConnectivityBloc(this.watchConnectivityUseCase)
    : super(const ConnectivityState.initial()) {
    on<ConnectivityStarted>(_onStarted);
    on<ConnectivityStatusChanged>(_onStatusChanged);
  }

  Future<void> _onStarted(
    ConnectivityStarted event,
    Emitter<ConnectivityState> emit,
  ) async {
    await _subscription?.cancel();
    final stream = await watchConnectivityUseCase(const NoParams());
    _subscription = stream.listen((isOnline) {
      add(ConnectivityStatusChanged(isOnline));
    });
  }

  void _onStatusChanged(
    ConnectivityStatusChanged event,
    Emitter<ConnectivityState> emit,
  ) {
    emit(
      event.isOnline
          ? const ConnectivityState.online()
          : const ConnectivityState.offline(),
    );
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
