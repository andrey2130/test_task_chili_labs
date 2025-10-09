part of 'connectivity_bloc.dart';

@freezed
sealed class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.started() = ConnectivityStarted;
  const factory ConnectivityEvent.statusChanged(bool isOnline) =
      ConnectivityStatusChanged;
}
