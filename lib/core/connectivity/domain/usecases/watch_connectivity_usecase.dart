import 'package:injectable/injectable.dart';
import '../../../usecases/usecase.dart';
import '../repositories/connectivity_repository.dart';

@injectable
class WatchConnectivityUseCase implements UseCase<Stream<bool>, NoParams> {
  final ConnectivityRepository repository;

  WatchConnectivityUseCase(this.repository);

  @override
  Future<Stream<bool>> call(NoParams params) async {
    return repository.watchConnectivity();
  }
}
