abstract class ConnectivityRepository {
  Stream<bool> watchConnectivity();
  Future<bool> checkNow();
}
