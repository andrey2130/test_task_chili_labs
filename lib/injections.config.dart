// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import 'core/connectivity/data/datasource/connectivity_datasource.dart'
    as _i960;
import 'core/connectivity/data/repositories/connectivity_repository_impl.dart'
    as _i1049;
import 'core/connectivity/domain/repositories/connectivity_repository.dart'
    as _i658;
import 'core/connectivity/domain/usecases/watch_connectivity_usecase.dart'
    as _i982;
import 'core/connectivity/presentation/bloc/connectivity_bloc.dart' as _i285;
import 'core/network/dio_client.dart' as _i45;
import 'feature/gifs_list/data/datasource/gifs_datasource.dart' as _i454;
import 'feature/gifs_list/data/repository/gifs_repository.dart' as _i1026;
import 'feature/gifs_list/domain/repository/gifs_repository.dart' as _i649;
import 'feature/gifs_list/domain/usecase/search_gifs_usecase.dart' as _i1038;
import 'feature/gifs_list/presentation/bloc/gifs_bloc.dart' as _i673;
import 'injections.dart' as _i699;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i207.Talker>(() => registerModule.talker);
    gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i409.GlobalKey<_i409.ScaffoldMessengerState>>(
      () => registerModule.scaffoldMessengerKey,
    );
    gh.lazySingleton<_i45.DioClient>(() => _i45.DioClient(gh<_i207.Talker>()));
    gh.lazySingleton<_i960.ConnectivityDatasource>(
      () => _i960.ConnectivityDatasource(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i658.ConnectivityRepository>(
      () =>
          _i1049.ConnectivityRepositoryImpl(gh<_i960.ConnectivityDatasource>()),
    );
    gh.factory<_i454.GifsDatasource>(
      () => _i454.GifsDatasourceImpl(gh<_i45.DioClient>(), gh<_i207.Talker>()),
    );
    gh.factory<_i649.GifsRepository>(
      () => _i1026.GifsRepositoryImpl(
        gh<_i454.GifsDatasource>(),
        gh<_i207.Talker>(),
      ),
    );
    gh.factory<_i1038.SearchGifsUseCase>(
      () => _i1038.SearchGifsUseCase(gh<_i649.GifsRepository>()),
    );
    gh.factory<_i982.WatchConnectivityUseCase>(
      () => _i982.WatchConnectivityUseCase(gh<_i658.ConnectivityRepository>()),
    );
    gh.factory<_i285.ConnectivityBloc>(
      () => _i285.ConnectivityBloc(gh<_i982.WatchConnectivityUseCase>()),
    );
    gh.factory<_i673.GifsBloc>(
      () => _i673.GifsBloc(gh<_i1038.SearchGifsUseCase>(), gh<_i207.Talker>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i699.RegisterModule {}
