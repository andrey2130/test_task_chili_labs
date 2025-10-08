import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/data/datasource/gifts_datasource.dart';
import 'package:test_task_chili_labs/feature/gifs_list/data/model/gifts_model.dart';
import 'package:test_task_chili_labs/feature/gifs_list/data/repository/gifts_repository.dart';

class MockGiftsDatasource extends Mock implements GiftsDatasource {}

class MockTalker extends Mock implements Talker {}

void main() {
  late GiftsRepositoryImpl repository;
  late MockGiftsDatasource mockDatasource;
  late MockTalker mockTalker;

  setUp(() {
    mockDatasource = MockGiftsDatasource();
    mockTalker = MockTalker();
    repository = GiftsRepositoryImpl(mockDatasource, mockTalker);
  });

  const tQuery = 'test';
  const tLimit = 10;
  const tOffset = 0;

  final tGiftsModelList = [
    const GiftsModel(
      id: '1',
      title: 'Test GIF',
      previewUrl: 'https://example.com/preview.gif',
      originalUrl: 'https://example.com/original.gif',
      username: 'test_user',
    ),
  ];

  final tGiftsEntityList = tGiftsModelList.map((m) => m.toEntity()).toList();

  group('GiftsRepositoryImpl - searchGifs', () {
    test(
      'should return list of GiftsEntity when datasource call is successful',
      () async {
        when(
          () => mockDatasource.searchGifs(
            query: any(named: 'query'),
            limit: any(named: 'limit'),
            offset: any(named: 'offset'),
          ),
        ).thenAnswer((_) async => tGiftsModelList);

        final result = await repository.searchGifs(
          query: tQuery,
          limit: tLimit,
          offset: tOffset,
        );

        result.fold(
          (failure) => fail('Should return Right but got Left'),
          (entities) => expect(entities, tGiftsEntityList),
        );
        verify(
          () => mockDatasource.searchGifs(
            query: tQuery,
            limit: tLimit,
            offset: tOffset,
          ),
        ).called(1);
      },
    );

    test('should return Failure when DioException occurs', () async {
      final tDioException = DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.connectionTimeout,
      );

      when(
        () => mockDatasource.searchGifs(
          query: any(named: 'query'),
          limit: any(named: 'limit'),
          offset: any(named: 'offset'),
        ),
      ).thenThrow(tDioException);
      when(() => mockTalker.handle(any())).thenReturn(null);

      final result = await repository.searchGifs(
        query: tQuery,
        limit: tLimit,
        offset: tOffset,
      );

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<Failure>()),
        (_) => fail('Should return Left'),
      );
      verify(() => mockTalker.handle(tDioException)).called(1);
    });

    test('should return Failure when unexpected exception occurs', () async {
      when(
        () => mockDatasource.searchGifs(
          query: any(named: 'query'),
          limit: any(named: 'limit'),
          offset: any(named: 'offset'),
        ),
      ).thenThrow(Exception('Unexpected error'));
      when(() => mockTalker.handle(any())).thenReturn(null);

      final result = await repository.searchGifs(
        query: tQuery,
        limit: tLimit,
        offset: tOffset,
      );

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure.message, 'An unexpected error occurred'),
        (_) => fail('Should return Left'),
      );
    });

    test(
      'should return empty list when datasource returns empty list',
      () async {
        when(
          () => mockDatasource.searchGifs(
            query: any(named: 'query'),
            limit: any(named: 'limit'),
            offset: any(named: 'offset'),
          ),
        ).thenAnswer((_) async => []);

        final result = await repository.searchGifs(
          query: tQuery,
          limit: tLimit,
          offset: tOffset,
        );

        result.fold(
          (failure) => fail('Should return Right but got Left'),
          (entities) => expect(entities, []),
        );
      },
    );
  });
}
