part of 'connectivity_bloc.dart';

@freezed
sealed class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = ConnectivityInitial;
  const factory ConnectivityState.online() = ConnectivityOnline;
  const factory ConnectivityState.offline() = ConnectivityOffline;
}
