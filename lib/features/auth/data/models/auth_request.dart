import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@Freezed(toJson: true, fromJson: true)
abstract class AuthRequest with _$AuthRequest {
  const factory AuthRequest({
    String? email,
    String? password,
    String? username,
    String? name,
    String? phoneNumber,
    String? confirmPassword,
    String? role,
    @JsonKey(name: 'AcademicStageId') int? academicStageId,
    @JsonKey(name: 'AcademicYearId') int? academicYearId,
    @JsonKey(name: 'AcademicSectionId') int? academicSectionId,
    String? currentPassword,
    String? newPassword,
    String? otp,
    String? accessToken,
    String? refreshToken,
    String? verificationToken,
  }) = _AuthRequest;

  factory AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestFromJson(json);

  //? Factory methods for different types of requests
  factory AuthRequest.login({required String email, required String password}) {
    return AuthRequest(email: email, password: password);
  }

  factory AuthRequest.signup({
    required String name,
    required String username,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required String role,
    required int academicStageId,
    required int academicYearId,
    required int academicSectionId,
  }) {
    return AuthRequest(
      name: name,
      username: username,
      email: email,
      phoneNumber: phoneNumber,
      password: password,
      confirmPassword: confirmPassword,
      role: role,
      academicStageId: academicStageId,
      academicYearId: academicYearId,
      academicSectionId: academicSectionId,
    );
  }

  factory AuthRequest.verifyOtp({required String email, required String otp}) {
    return AuthRequest(email: email, otp: otp);
  }

  factory AuthRequest.forgotPassword({required String email}) {
    return AuthRequest(email: email);
  }

  factory AuthRequest.resetPassword({
    required String email,
    required String newPassword,
    required String confirmPassword,
    required String verificationToken,
  }) {
    return AuthRequest(
      email: email,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
      verificationToken: verificationToken,
    );
  }

  factory AuthRequest.changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) {
    return AuthRequest(
      currentPassword: currentPassword,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    );
  }

  factory AuthRequest.buildRefreshTokenRequest({
    required String accessToken,
    required String refreshToken,
  }) {
    return AuthRequest(accessToken: accessToken, refreshToken: refreshToken);
  }

  factory AuthRequest.teacherSignup({
    required String name,
    required String username,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
  }) {
    return AuthRequest(
      name: name,
      username: username,
      email: email,
      phoneNumber: phoneNumber,
      password: password,
      confirmPassword: confirmPassword,
      role: 'Teacher',
    );
  }
}
