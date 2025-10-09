import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_chili_labs/core/failure/failure.dart';

part 'network_failure.freezed.dart';

@freezed
sealed class NetworkFailure extends Failure with _$NetworkFailure {
  const factory NetworkFailure.noInternet() = NoInternetFailure;
  const factory NetworkFailure.serverError(String message) = ServerErrorFailure;
  const factory NetworkFailure.timeout() = TimeoutFailure;
  const factory NetworkFailure.unknown(String message) = UnknownFailure;

  const NetworkFailure._() : super(message: '');
}

extension NetworkFailureReadable on NetworkFailure {
  String readableMessage() {
    return switch (this) {
      NoInternetFailure() =>
        'Please check your internet connection and try again.',
      TimeoutFailure() => 'The request timed out. Please try again.',
      ServerErrorFailure(message: final message) => message,
      UnknownFailure(message: final message) => message,
    };
  }
}

extension NetworkFailureExtension on DioException {
  NetworkFailure toNetworkFailure() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure.timeout();
      case DioExceptionType.connectionError:
        if (message?.contains('Failed host lookup') == true ||
            message?.contains('No Internet') == true) {
          return const NetworkFailure.noInternet();
        }
        return NetworkFailure.unknown(message ?? 'Connection error');
      case DioExceptionType.badResponse:
        final statusCode = response?.statusCode;
        if (statusCode != null) {
          if (statusCode >= 500) {
            return NetworkFailure.serverError('Server error ($statusCode)');
          } else if (statusCode == 404) {
            return const NetworkFailure.serverError('Service not found');
          } else if (statusCode == 401) {
            return const NetworkFailure.serverError('Unauthorized access');
          } else if (statusCode == 403) {
            return const NetworkFailure.serverError('Access forbidden');
          }
        }
        return NetworkFailure.serverError(
          'HTTP ${statusCode ?? 'Unknown'} error',
        );
      case DioExceptionType.cancel:
        return const NetworkFailure.unknown('Request cancelled');
      case DioExceptionType.unknown:
      default:
        return NetworkFailure.unknown(message ?? 'Unknown network error');
    }
  }
}
