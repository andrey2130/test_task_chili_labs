import 'package:dartz/dartz.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';

abstract class GiftsRepository {
  Future<Either<Failure, List<GiftsEntity>>> searchGifs({
    required String query,
    int? limit,
    int? offset,
  });
}
