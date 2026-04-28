import 'package:dartz/dartz.dart';

import '../../../../core/api/token_manager.dart';
import '../../../../core/core.dart';
import '../models/auth_request.dart';
import '../models/auth_response.dart';
import 'base_auth_repo.dart';

class AuthRepository extends BaseAuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService) : super();

  //? Login
  Future<Either<ApiErrorModel, AuthResponse>> login({
    required String email,
    required String password,
  }) async {
    return handleRequest(
      () => _apiService.login(
        AuthRequest.login(email: email, password: password),
      ),
    );
  }

  //? Sign Up
  Future<Either<ApiErrorModel, AuthResponse>> signup({
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
  }) async {
    return handleRequest(
      () => _apiService.signup(
        AuthRequest.signup(
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
        ),
      ),
    );
  }

  //? Verify OTP (for email verification and password reset)
  Future<Either<ApiErrorModel, SimpleResponse>> verifyOtp({
    required String email,
    required String otp,
  }) async {
    try {
      final response = await _apiService.verifyOtp(
        AuthRequest.verifyOtp(email: email, otp: otp),
      );
      return Right(response);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }

  //? Forgot Password
  Future<Either<ApiErrorModel, SimpleResponse>> forgotPassword({
    required String email,
  }) async {
    return handleRequest(
      () =>
          _apiService.forgotPassword(AuthRequest.forgotPassword(email: email)),
    );
  }

  //? Reset Password
  Future<Either<ApiErrorModel, SimpleResponse>> resetPassword({
    required String email,
    required String newPassword,
    required String confirmPassword,
    required String verificationToken,
  }) async {
    return handleRequest(
      () => _apiService.resetPassword(
        AuthRequest.resetPassword(
          email: email,
          newPassword: newPassword,
          confirmPassword: confirmPassword,
          verificationToken: verificationToken,
        ),
      ),
    );
  }

  //? Change Password
  Future<Either<ApiErrorModel, SimpleResponse>> changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    return handleRequest(
      () => _apiService.changePassword(
        AuthRequest.changePassword(
          currentPassword: currentPassword,
          newPassword: newPassword,
          confirmPassword: confirmPassword,
        ),
      ),
    );
  }

  //? Logout
  Future<Either<ApiErrorModel, SimpleResponse>> logout() async {
    return handleRequest(() => _apiService.logout());
  }

  //? Delete Account
  Future<Either<ApiErrorModel, SimpleResponse>> deleteAccount() async {
    return handleRequest(() => _apiService.deleteAccount());
  }

  //? Get User Profile
  Future<Either<ApiErrorModel, ProfileResponse>> getUserProfile() async {
    return handleRequest(() => _apiService.getUserProfile());
  }

  //? Refresh Token
  Future<Either<ApiErrorModel, AuthResponse>> refreshToken() async {
    final tokens = await TokenManager.getTokens();
    if (tokens == null) {
      return Left(
        ApiErrorModel.auth(
          statusCode: 401,
          rawError: 'No tokens available for refresh',
        ),
      );
    }

    return handleRequest(
      () => _apiService.refreshToken(
        AuthRequest.buildRefreshTokenRequest(
          accessToken: tokens.accessToken,
          refreshToken: tokens.refreshToken,
        ),
      ),
    );
  }

}
