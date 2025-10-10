import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/core/failure/network_failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/data/datasource/gifs_datasource.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/repository/gifs_repository.dart';

@Injectable(as: GifsRepository)
class GifsRepositoryImpl implements GifsRepository {
  final GifsDatasource gifsDatasource;
  final Talker talker;

  GifsRepositoryImpl(this.gifsDatasource, this.talker);

  @override
  Future<Either<Failure, List<GifsEntity>>> searchGifs({
    required String query,
    int? limit,
    int? offset,
  }) async {
    try {
      final list = await gifsDatasource.searchGifs(
        query: query,
        limit: limit,
        offset: offset,
      );
      return Right(list.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      talker.handle(e);
      final networkFailure = e.toNetworkFailure();
      return Left(Failure(message: networkFailure.readableMessage()));
    } catch (e) {
      talker.handle(e);
      return Left(Failure(message: 'An unexpected error occurred'));
    }
  }
}
