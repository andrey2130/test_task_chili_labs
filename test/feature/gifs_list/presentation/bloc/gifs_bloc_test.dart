import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/core/failure/network_failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifs_search_params.dart';

import 'package:test_task_chili_labs/feature/gifs_list/domain/usecase/search_gifs_usecase.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/bloc/gifs_bloc.dart';

class MockSearchGifsUseCase extends Mock implements SearchGifsUseCase {}

class MockTalker extends Mock implements Talker {}

void main() {
  late GifsBloc gifsBloc;
  late MockSearchGifsUseCase mockSearchGifsUseCase;
  late MockTalker mockTalker;

  setUpAll(() {
    registerFallbackValue(
      SearchGifsParams(query: 'test', limit: 10, offset: 0),
    );
  });

  setUp(() {
    mockSearchGifsUseCase = MockSearchGifsUseCase();
    mockTalker = MockTalker();
    gifsBloc = GifsBloc(mockSearchGifsUseCase, mockTalker);
  });

  tearDown(() {
    gifsBloc.close();
  });

  group('GifsBloc', () {
    final testGifs = [
      GifsEntity(
        id: '1',
        title: 'Test Gif 1',
        previewUrl: 'https://test.com/1_preview.gif',
        originalUrl: 'https://test.com/1.gif',
        username: 'testuser',
      ),
    ];

    final searchParams = SearchGifsParams(query: 'test', limit: 10, offset: 0);

    test('initial state should be GifsInitial', () {
      expect(gifsBloc.state, isA<GifsInitial>());
    });

    blocTest<GifsBloc, GifsState>(
      'emits [GifsLoading, GifsLoaded] when SearchGifsEvent is added successfully',
      build: () {
        when(
          () => mockSearchGifsUseCase(any()),
        ).thenAnswer((_) async => Right(testGifs));
        return gifsBloc;
      },
      act: (bloc) => bloc.add(GifsEvent.searchGifs(searchParams)),
      wait: const Duration(milliseconds: 1000),
      expect: () => [
        isA<GifsLoading>(),
        isA<GifsLoaded>().having((state) => state.gifs, 'gifs', testGifs),
      ],
    );

    blocTest<GifsBloc, GifsState>(
      'emits [GifsLoading, GifsError] when SearchGifsEvent fails',
      build: () {
        when(
          () => mockSearchGifsUseCase(any()),
        ).thenAnswer((_) async => Left(Failure(message: 'No Internet')));
        return gifsBloc;
      },
      act: (bloc) => bloc.add(GifsEvent.searchGifs(searchParams)),
      wait: const Duration(milliseconds: 1000),
      expect: () => [
        isA<GifsLoading>(),
        isA<GifsError>().having(
          (state) => state.failure,
          'failure',
          isA<NoInternetFailure>(),
        ),
      ],
      verify: (_) {
        verify(() => mockTalker.error(any())).called(1);
      },
    );

    blocTest<GifsBloc, GifsState>(
      'emits [GifsInitial] when ClearGifsEvent is added',
      build: () => gifsBloc,
      act: (bloc) => bloc.add(const GifsEvent.clearGifs()),
      expect: () => [isA<GifsInitial>()],
    );

    blocTest<GifsBloc, GifsState>(
      'emits [GifsLoadingMore, GifsLoaded] when LoadMoreGifsEvent is added successfully',
      build: () {
        when(
          () => mockSearchGifsUseCase(any()),
        ).thenAnswer((_) async => Right(testGifs));
        return gifsBloc;
      },
      seed: () => GifsState.loaded(testGifs),
      act: (bloc) {
        bloc.add(GifsEvent.searchGifs(searchParams));
        bloc.add(const GifsEvent.loadMoreGifs());
      },
      wait: const Duration(milliseconds: 1000),
      expect: () => [
        isA<GifsLoading>(),
        isA<GifsLoaded>().having((state) => state.gifs, 'gifs', testGifs),
      ],
    );
  });
}
