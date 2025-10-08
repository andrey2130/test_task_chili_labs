import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_chili_labs/core/failure/network_failure.dart';

class ErrorsOverlay extends StatelessWidget {
  final NetworkFailure failure;
  final VoidCallback onRetry;

  const ErrorsOverlay({
    required this.failure,
    required this.onRetry,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
          bottom: 24 + bottomInset,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildErrorIcon(context),
                  const SizedBox(height: 16),
                  Text(
                    _getErrorTitle(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _getErrorMessage(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  _buildRetryButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorIcon(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _getErrorColor(context).withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(_getErrorIcon(), size: 48, color: _getErrorColor(context)),
    );
  }

  Widget _buildRetryButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Platform.isIOS
          ? CupertinoButton.filled(
              onPressed: onRetry,
              child: const Text('Try Again'),
            )
          : ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Try Again'),
            ),
    );
  }

  String _getErrorTitle() {
    return switch (failure) {
      NoInternetFailure() => 'No Internet Connection',
      TimeoutFailure() => 'Request Timeout',
      ServerErrorFailure() => 'Server Error',
      UnknownFailure() => 'Something Went Wrong',
    };
  }

  String _getErrorMessage() {
    return failure.readableMessage();
  }

  IconData _getErrorIcon() {
    return switch (failure) {
      NoInternetFailure() => Icons.wifi_off_rounded,
      TimeoutFailure() => Icons.timer_off_rounded,
      ServerErrorFailure() => Icons.error_outline_rounded,
      UnknownFailure() => Icons.help_outline_rounded,
    };
  }

  Color _getErrorColor(BuildContext context) {
    return switch (failure) {
      NoInternetFailure() => Colors.orange,
      TimeoutFailure() => Colors.blue,
      ServerErrorFailure() => Colors.red,
      UnknownFailure() => Colors.grey,
    };
  }
}
