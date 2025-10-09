import 'package:injectable/injectable.dart';
import '../datasource/connectivity_datasource.dart';
import '../../domain/repositories/connectivity_repository.dart';

@LazySingleton(as: ConnectivityRepository)
class ConnectivityRepositoryImpl implements ConnectivityRepository {
  final ConnectivityDatasource datasource;

  ConnectivityRepositoryImpl(this.datasource);

  @override
  Future<bool> checkNow() => datasource.checkNow();

  @override
  Stream<bool> watchConnectivity() => datasource.watchConnectivity();
}
