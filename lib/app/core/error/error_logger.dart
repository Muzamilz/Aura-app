import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'app_exceptions.dart';

/// A service for handling error logging throughout the application
class ErrorLogger {
  static final ErrorLogger _instance = ErrorLogger._internal();
  factory ErrorLogger() => _instance;
  ErrorLogger._internal();

  /// Log an error with optional stack trace and additional details
  void logError(dynamic error, {StackTrace? stackTrace, String? context}) {
    // In debug mode, print detailed error information
    if (kDebugMode) {
      print('ERROR[$context]: $error');
      if (stackTrace != null) print(stackTrace);
    }

    // Log to developer console for debugging
    developer.log(
      error.toString(),
      name: 'AuraApp',
      error: error,
      stackTrace: stackTrace,
    );

    // TODO: Implement remote error logging service integration
    // This could be Firebase Crashlytics, Sentry, or other error tracking services
  }

  /// Log an AppException with proper formatting and categorization
  void logAppException(AppException exception, {StackTrace? stackTrace}) {
    final errorDetails = {
      'code': exception.code,
      'details': exception.details,
      'type': exception.runtimeType.toString(),
    };

    logError(
      exception.message,
      stackTrace: stackTrace,
      context: errorDetails.toString(),
    );
  }

  /// Log a specific error type with custom context
  void logTypeError(String type, String message, {Map<String, dynamic>? details}) {
    final contextMap = {
      'type': type,
      if (details != null) ...details,
    };

    logError(message, context: contextMap.toString());
  }
}