import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifts_search_params.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/repository/gifts_repository.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/usecase/search_gifts_usecase.dart';

class MockGiftsRepository extends Mock implements GiftsRepository {}

void main() {
  late SearchGiftsUseCase useCase;
  late MockGiftsRepository mockRepository;

  setUp(() {
    mockRepository = MockGiftsRepository();
    useCase = SearchGiftsUseCase(mockRepository);
  });

  const tQuery = 'funny cats';
  const tLimit = 10;
  const tOffset = 0;
  const tParams = SearchGifsParams(
    query: tQuery,
    limit: tLimit,
    offset: tOffset,
  );

  final tGifsList = [
    const GiftsEntity(
      id: '1',
      title: 'Funny Cat',
      previewUrl: 'https://example.com/preview.gif',
      originalUrl: 'https://example.com/original.gif',
      username: 'test_user',
    ),
    const GiftsEntity(
      id: '2',
      title: 'Another Cat',
      previewUrl: 'https://example.com/preview2.gif',
      originalUrl: 'https://example.com/original2.gif',
      username: 'test_user2',
    ),
  ];

  group('SearchGiftsUseCase', () {
    test(
      'should return list of GiftsEntity when repository call is successful',
      () async {
        when(
          () => mockRepository.searchGifs(
            query: any(named: 'query'),
            limit: any(named: 'limit'),
            offset: any(named: 'offset'),
          ),
        ).thenAnswer((_) async => Right(tGifsList));

        final result = await useCase(tParams);

        result.fold(
          (failure) => fail('Should return Right but got Left'),
          (entities) => expect(entities, tGifsList),
        );
        verify(
          () => mockRepository.searchGifs(
            query: tQuery,
            limit: tLimit,
            offset: tOffset,
          ),
        ).called(1);
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test('should return Failure when repository call fails', () async {
      final tFailure = Failure(message: 'Network error');

      when(
        () => mockRepository.searchGifs(
          query: any(named: 'query'),
          limit: any(named: 'limit'),
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((_) async => Left(tFailure));

      final result = await useCase(tParams);

      expect(result, Left(tFailure));
      verify(
        () => mockRepository.searchGifs(
          query: tQuery,
          limit: tLimit,
          offset: tOffset,
        ),
      ).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should pass correct parameters to repository', () async {
      when(
        () => mockRepository.searchGifs(
          query: any(named: 'query'),
          limit: any(named: 'limit'),
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((_) async => Right(tGifsList));

      await useCase(tParams);

      verify(
        () => mockRepository.searchGifs(
          query: tQuery,
          limit: tLimit,
          offset: tOffset,
        ),
      ).called(1);
    });

    test(
      'should return empty list when repository returns empty list',
      () async {
        when(
          () => mockRepository.searchGifs(
            query: any(named: 'query'),
            limit: any(named: 'limit'),
            offset: any(named: 'offset'),
          ),
        ).thenAnswer((_) async => const Right([]));

        final result = await useCase(tParams);

        result.fold(
          (failure) => fail('Should return Right but got Left'),
          (entities) => expect(entities, []),
        );
      },
    );
  });
}
