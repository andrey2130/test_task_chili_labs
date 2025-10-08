import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/app_router/app_router.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/bloc/gifts_bloc.dart';
import 'package:test_task_chili_labs/injections.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await dotenv.load(fileName: '.env');

      configureDependencies();
      runApp(const MyApp());
    },
    (error, stackTrace) {
      getIt<Talker>().handle(error);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<GiftsBloc>())],
      child: TalkerWrapper(
        talker: getIt<Talker>(),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => GestureDetector(
            onPanDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp.router(
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              ),
              routerConfig: appRouter,
            ),
          ),
        ),
      ),
    );
  }
}
