import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/app_router/app_router.dart';
import 'package:test_task_chili_labs/core/connectivity/presentation/bloc/connectivity_bloc.dart';
import 'package:test_task_chili_labs/core/connectivity/presentation/connectivity_listener.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/bloc/gifs_bloc.dart';
import 'package:test_task_chili_labs/injections.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await dotenv.load(fileName: '.env');

      configureDependencies();

      final gifsBloc = getIt<GifsBloc>();
      final connectivityBloc = getIt<ConnectivityBloc>();
      final talker = getIt<Talker>();

      runApp(
        MyApp(
          gifsBloc: gifsBloc,
          connectivityBloc: connectivityBloc,
          talker: talker,
        ),
      );
    },
    (error, stackTrace) {
      getIt<Talker>().handle(error);
    },
  );
}

class MyApp extends StatelessWidget {
  final GifsBloc gifsBloc;
  final ConnectivityBloc connectivityBloc;
  final Talker talker;
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  MyApp({
    super.key,
    required this.gifsBloc,
    required this.connectivityBloc,
    required this.talker,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => gifsBloc),
        BlocProvider(
          create: (context) =>
              connectivityBloc..add(const ConnectivityStarted()),
        ),
      ],
      child: TalkerWrapper(
        talker: talker,
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) {
            return GestureDetector(
              onPanDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
              child: ConnectivityListener(
                child: MaterialApp.router(
                  theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.deepPurple,
                    ),
                  ),
                  scaffoldMessengerKey: _scaffoldMessengerKey,
                  routerConfig: appRouter,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
