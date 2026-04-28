import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.freezed.dart';
part 'api_error_model.g.dart';

/// Categorised error types for the API layer.
enum ApiErrorType {
  /// No connectivity or timeout.
  network,

  /// HTTP 5xx from the server.
  server,

  /// HTTP 401 / 403 – unauthenticated or forbidden.
  auth,

  /// HTTP 400 / 422 – invalid input data.
  validation,

  /// HTTP 404 – resource not found.
  notFound,

  /// Anything else.
  unknown,
}

/// Immutable model representing a structured API error.
///
/// [message] holds the ARB localisation key (e.g. `'error_network'`).
/// It is looked up via `S.of(context)` in the UI layer.
@freezed
abstract class ApiErrorModel with _$ApiErrorModel {
  const factory ApiErrorModel({
    /// Error category — used to pick icon / copy in the UI.
    required ApiErrorType type,

    /// ARB localisation key OR raw error message for display.
    required String message,

    /// Field-level validation errors keyed by field name (HTTP 400/422 only).
    Map<String, String>? fieldErrors,

    /// HTTP status code (if available).
    int? statusCode,

    /// Raw error string for logging only – never shown to the user.
    String? rawError,
  }) = _ApiErrorModel;

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  /// Convenience factory: wraps a raw exception or string message.
  factory ApiErrorModel.fromRawMessage(
    String rawMessage, {
    ApiErrorType type = ApiErrorType.unknown,
    int? statusCode,
  }) {
    return ApiErrorModel(
      type: type,
      message: 'error_unknown',
      statusCode: statusCode,
      rawError: rawMessage,
    );
  }

  /// Convenience factory: creates a network error model.
  factory ApiErrorModel.network({String? rawError}) {
    return ApiErrorModel(
      type: ApiErrorType.network,
      message: 'error_network',
      rawError: rawError,
    );
  }

  /// Convenience factory: creates an auth error model.
  factory ApiErrorModel.auth({int? statusCode, String? rawError}) {
    return ApiErrorModel(
      type: ApiErrorType.auth,
      message: 'error_auth',
      statusCode: statusCode,
      rawError: rawError,
    );
  }
}
