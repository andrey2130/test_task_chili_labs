import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/core/usecases/usecase.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifs_search_params.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/repository/gifs_repository.dart';


@injectable
class SearchGifsUseCase
    implements UseCase<Either<Failure, List<GifsEntity>>, SearchGifsParams> {
  final GifsRepository gifsRepository;

  SearchGifsUseCase(this.gifsRepository);

  @override
  Future<Either<Failure, List<GifsEntity>>> call(SearchGifsParams params) {
    return gifsRepository.searchGifs(
      query: params.query,
      limit: params.limit,
      offset: params.offset,
    );
  }
}
