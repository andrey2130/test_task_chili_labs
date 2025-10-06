import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/app_router/app_router.dart';
import 'package:test_task_chili_labs/injections.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

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
    return TalkerWrapper(
      talker: getIt<Talker>(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp.router(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          routerConfig: appRouter,
        ),
      ),
    );
  }
}
