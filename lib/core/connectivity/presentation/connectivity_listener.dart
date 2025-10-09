import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/connectivity_bloc.dart';
import 'package:test_task_chili_labs/injections.dart';

class ConnectivityListener extends StatelessWidget {
  final Widget child;

  const ConnectivityListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityBloc, ConnectivityState>(
      listener: (context, state) {
        final messenger =
            getIt<GlobalKey<ScaffoldMessengerState>>().currentState;
        if (messenger == null) return;
        final isOffline = state.maybeWhen(
          offline: () => true,
          orElse: () => false,
        );
        if (isOffline) {
          messenger.clearSnackBars();
          messenger.showSnackBar(
            const SnackBar(
              content: Text('Please connect to the internet'),
              duration: Duration(days: 1),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.red,
            ),
          );
        } else {
          messenger.hideCurrentSnackBar();
          messenger.clearSnackBars();
        }
      },
      child: child,
    );
  }
}
