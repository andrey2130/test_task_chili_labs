import 'package:dartz/dartz.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';

abstract class GifsRepository {
  Future<Either<Failure, List<GifsEntity>>> searchGifs({
    required String query,
    int? limit,
    int? offset,
  });
}
