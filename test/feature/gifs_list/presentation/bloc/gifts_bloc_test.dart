import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';
import 'package:test_task_chili_labs/core/failure/network_failure.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifts_search_params.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/usecase/search_gifts_usecase.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/bloc/gifts_bloc.dart';

class MockSearchGiftsUseCase extends Mock implements SearchGiftsUseCase {}

class MockTalker extends Mock implements Talker {}

void main() {
  late GiftsBloc giftsBloc;
  late MockSearchGiftsUseCase mockSearchGiftsUseCase;
  late MockTalker mockTalker;

  setUpAll(() {
    registerFallbackValue(
      SearchGifsParams(query: 'test', limit: 10, offset: 0),
    );
  });

  setUp(() {
    mockSearchGiftsUseCase = MockSearchGiftsUseCase();
    mockTalker = MockTalker();
    giftsBloc = GiftsBloc(mockSearchGiftsUseCase, mockTalker);
  });

  tearDown(() {
    giftsBloc.close();
  });

  group('GiftsBloc', () {
    final testGifts = [
      GiftsEntity(
        id: '1',
        title: 'Test Gif 1',
        previewUrl: 'https://test.com/1_preview.gif',
        originalUrl: 'https://test.com/1.gif',
        username: 'testuser',
      ),
    ];

    final searchParams = SearchGifsParams(query: 'test', limit: 10, offset: 0);

    test('initial state should be GiftsInitial', () {
      expect(giftsBloc.state, isA<GiftsInitial>());
    });

    blocTest<GiftsBloc, GiftsState>(
      'emits [GiftsLoading, GiftsLoaded] when SearchGifsEvent is added successfully',
      build: () {
        when(
          () => mockSearchGiftsUseCase(any()),
        ).thenAnswer((_) async => Right(testGifts));
        return giftsBloc;
      },
      act: (bloc) => bloc.add(GiftsEvent.searchGifs(searchParams)),
      wait: const Duration(milliseconds: 1000),
      expect: () => [
        isA<GiftsLoading>(),
        isA<GiftsLoaded>().having((state) => state.gifts, 'gifts', testGifts),
      ],
    );

    blocTest<GiftsBloc, GiftsState>(
      'emits [GiftsLoading, GiftsError] when SearchGifsEvent fails',
      build: () {
        when(
          () => mockSearchGiftsUseCase(any()),
        ).thenAnswer((_) async => Left(Failure(message: 'No Internet')));
        return giftsBloc;
      },
      act: (bloc) => bloc.add(GiftsEvent.searchGifs(searchParams)),
      wait: const Duration(milliseconds: 1000),
      expect: () => [
        isA<GiftsLoading>(),
        isA<GiftsError>().having(
          (state) => state.failure,
          'failure',
          isA<NoInternetFailure>(),
        ),
      ],
      verify: (_) {
        verify(() => mockTalker.error(any())).called(1);
      },
    );

    blocTest<GiftsBloc, GiftsState>(
      'emits [GiftsInitial] when ClearGiftsEvent is added',
      build: () => giftsBloc,
      act: (bloc) => bloc.add(const GiftsEvent.clearGifs()),
      expect: () => [isA<GiftsInitial>()],
    );

    blocTest<GiftsBloc, GiftsState>(
      'emits [GiftsLoadingMore, GiftsLoaded] when LoadMoreGiftsEvent is added successfully',
      build: () {
        when(
          () => mockSearchGiftsUseCase(any()),
        ).thenAnswer((_) async => Right(testGifts));
        return giftsBloc;
      },
      seed: () => GiftsState.loaded(testGifts),
      act: (bloc) {
        bloc.add(GiftsEvent.searchGifs(searchParams));
        bloc.add(const GiftsEvent.loadMoreGifs());
      },
      wait: const Duration(milliseconds: 1000),
      expect: () => [
        isA<GiftsLoading>(),
        isA<GiftsLoaded>().having((state) => state.gifts, 'gifts', testGifts),
      ],
    );
  });
}
