/// Represents a domain-level error.
///
/// This sealed class hierarchy provides a typed representation of all error
/// conditions that can occur in the application. Each subclass carries
/// contextual data relevant to that error type.
///
/// Use [FailureMapper] to convert a [DioException] to the appropriate [Failure].
sealed class Failure {
  const Failure({this.message});

  final String? message;
}

/// Network connectivity error: timeout, connection refused, or no internet.
final class NetworkFailure extends Failure {
  const NetworkFailure({super.message});
}

/// Server error: HTTP 5xx response from the backend.
final class ServerFailure extends Failure {
  const ServerFailure({super.message, this.statusCode});

  final int? statusCode;
}

/// Authentication error: HTTP 401 or 403.
final class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({super.message});
}

/// Resource not found: HTTP 404.
final class NotFoundFailure extends Failure {
  const NotFoundFailure({super.message});
}

/// Validation error: HTTP 400 or 422 with field-level error details.
final class ValidationFailure extends Failure {
  const ValidationFailure({super.message, this.fieldErrors});

  final Map<String, String>? fieldErrors;
}

/// Catch-all for any error not covered by the other subtypes.
final class UnknownFailure extends Failure {
  const UnknownFailure({super.message, this.rawError});

  final String? rawError;
}
