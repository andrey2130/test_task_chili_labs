import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/core/usecases/usecase.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/repository/gifts_repository.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifts_search_params.dart';

@injectable
class SearchGiftsUseCase
    implements UseCase<Either<Failure, List<GiftsEntity>>, SearchGifsParams> {
  final GiftsRepository giftsRepository;

  SearchGiftsUseCase(this.giftsRepository);

  @override
  Future<Either<Failure, List<GiftsEntity>>> call(SearchGifsParams params) {
    return giftsRepository.searchGifs(
      query: params.query,
      limit: params.limit,
      offset: params.offset,
    );
  }
}
