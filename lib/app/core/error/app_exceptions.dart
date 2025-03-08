/// Base exception class for all app-specific exceptions
abstract class AppException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  AppException(this.message, {this.code, this.details});

  @override
  String toString() => 'AppException: $message (Code: $code)';
}

/// Network-related exceptions
class NetworkException extends AppException {
  NetworkException(String message, {String? code, dynamic details})
      : super(message, code: code ?? 'NETWORK_ERROR', details: details);
}

/// Authentication-related exceptions
class AuthException extends AppException {
  AuthException(String message, {String? code, dynamic details})
      : super(message, code: code ?? 'AUTH_ERROR', details: details);
}

/// Database-related exceptions
class DatabaseException extends AppException {
  DatabaseException(String message, {String? code, dynamic details})
      : super(message, code: code ?? 'DB_ERROR', details: details);
}

/// Validation-related exceptions
class ValidationException extends AppException {
  ValidationException(String message, {String? code, dynamic details})
      : super(message, code: code ?? 'VALIDATION_ERROR', details: details);
}

/// Business logic related exceptions
class BusinessException extends AppException {
  BusinessException(String message, {String? code, dynamic details})
      : super(message, code: code ?? 'BUSINESS_ERROR', details: details);
}
