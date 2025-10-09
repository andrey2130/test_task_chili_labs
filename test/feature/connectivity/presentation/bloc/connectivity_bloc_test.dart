import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_task_chili_labs/core/connectivity/domain/usecases/watch_connectivity_usecase.dart';
import 'package:test_task_chili_labs/core/connectivity/presentation/bloc/connectivity_bloc.dart';
import 'package:test_task_chili_labs/core/usecases/usecase.dart';

class MockWatchConnectivityUseCase extends Mock
    implements WatchConnectivityUseCase {}

void main() {
  late ConnectivityBloc connectivityBloc;
  late MockWatchConnectivityUseCase mockWatchConnectivityUseCase;

  setUp(() {
    mockWatchConnectivityUseCase = MockWatchConnectivityUseCase();
    connectivityBloc = ConnectivityBloc(mockWatchConnectivityUseCase);
  });

  tearDown(() {
    connectivityBloc.close();
  });

  group('ConnectivityBloc', () {
    test('initial state should be ConnectivityInitial', () {
      expect(connectivityBloc.state, const ConnectivityState.initial());
    });

    blocTest<ConnectivityBloc, ConnectivityState>(
      'emits [ConnectivityOnline] when connection is available',
      build: () {
        when(
          () => mockWatchConnectivityUseCase(const NoParams()),
        ).thenAnswer((_) async => Stream.value(true));
        return connectivityBloc;
      },
      act: (bloc) => bloc.add(const ConnectivityEvent.started()),
      expect: () => [const ConnectivityState.online()],
    );

    blocTest<ConnectivityBloc, ConnectivityState>(
      'emits [ConnectivityOffline] when connection is not available',
      build: () {
        when(
          () => mockWatchConnectivityUseCase(const NoParams()),
        ).thenAnswer((_) async => Stream.value(false));
        return connectivityBloc;
      },
      act: (bloc) => bloc.add(const ConnectivityEvent.started()),
      expect: () => [const ConnectivityState.offline()],
    );

    blocTest<ConnectivityBloc, ConnectivityState>(
      'emits states in correct order when connectivity changes',
      build: () {
        when(
          () => mockWatchConnectivityUseCase(const NoParams()),
        ).thenAnswer((_) async => Stream.fromIterable([true, false, true]));
        return connectivityBloc;
      },
      act: (bloc) => bloc.add(const ConnectivityEvent.started()),
      expect: () => [
        const ConnectivityState.online(),
        const ConnectivityState.offline(),
        const ConnectivityState.online(),
      ],
    );
  });
}
