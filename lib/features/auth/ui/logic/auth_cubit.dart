import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/api/token_manager.dart';
import '../../../../core/constants/key_strings.dart';
import '../../../../core/core.dart';
import '../../../../core/services/crash_reporting_service.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/auth_request.dart';
import '../../data/models/auth_response.dart';
import '../../data/repo/auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends BaseCubit<AuthState> {
  final ApiService _apiService;
  final AuthRepository _authRepository;
  String? currentSignupEmail;

  AuthCubit(this._apiService, this._authRepository) : super(AuthInitial());

  /// Enter guest mode: persist flag and emit state.
  Future<void> enterGuestMode() async {
    await GuestModeService.enableGuestMode();
    AppState.isGuestMode = true;
    emit(GuestModeActive());
  }

  // Controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final TextEditingController registrationEmailController =
      TextEditingController();
  final TextEditingController registerPasswordController =
      TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final loginEmailFocusNode = FocusNode();
  final loginPasswordFocusNode = FocusNode();
  final registrationEmailFocusNode = FocusNode();
  final registerPasswordFocusNode = FocusNode();
  final userNameFocusNode = FocusNode();
  final usernameFocusNode = FocusNode();
  final mobileNumberFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();

  // Toggle States
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  bool isTeacherSelected = true;

  // Password criteria
  bool hasMinLength = false;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;

  // Validation states
  bool isEmailValid = false;
  bool isPasswordValid = false;

  // Dropdown values (Old - for compatibility)
  String? selectedRole;
  String? selectedYear;
  String? selectedSpecialization;

  // Academic Dropdown IDs (New backend)
  int? selectedAcademicStageId;
  int? selectedAcademicYearId;
  int? selectedAcademicSectionId;

  // Lists for dropdowns (Old)
  final List<String> roles = S.current.roles.split('\n');
  final List<String> years = S.current.years.split('\n');
  final List<String> specializations = S.current.specializations.split('\n');

  // Academic Data Lists (New backend)
  List<AcademicStage> academicStages = [];
  List<AcademicYear> academicYears = [];
  List<AcademicSection> academicSections = [];
  bool isLoadingAcademicData = false;

  // OTP Related
  Timer? _timer;
  bool canResend = true;
  String timerText = '';
  final int otpLength = 6;
  String userOtp = '';
  bool isOtpValid = false;
  bool isPasswordReset = false;
  String? selectedEmail;
  String? verificationToken;

  // Toggle Functions
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(SignUpFormChanged());
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible = !isConfirmPasswordVisible;
    emit(SignUpFormChanged());
  }

  void toggleRole(bool isTeacher) {
    isTeacherSelected = isTeacher;
    emit(SignUpFormChanged());
    loginEmailController.clear();
    loginPasswordController.clear();
  }

  // Dropdown handlers (Old)
  void handleRoleChange(String? value) {
    selectedRole = value;
    emit(SignUpFormChanged());
  }

  void handleYearChange(String? value) {
    selectedYear = value?.replaceAll(' ', '');
    emit(SignUpFormChanged());
  }

  void handleSpecializationChange(String? value) {
    selectedSpecialization = value;
    emit(SignUpFormChanged());
  }

  // Academic Dropdown handlers (New)
  void handleAcademicStageChange(int? stageId) {
    selectedAcademicStageId = stageId;
    // Reset dependent dropdowns
    selectedAcademicYearId = null;
    selectedAcademicSectionId = null;
    emit(SignUpFormChanged());
    // Fetch years for selected stage if needed
  }

  void handleAcademicYearChange(int? yearId) {
    selectedAcademicYearId = yearId;
    emit(SignUpFormChanged());
  }

  void handleAcademicSectionChange(int? sectionId) {
    selectedAcademicSectionId = sectionId;
    emit(SignUpFormChanged());
  }

  // Email validation
  void validateEmail(String email) {
    isEmailValid = email.isNotEmpty && email.contains('@');
    emit(SignUpFormChanged());
  }

  // Password validation
  void checkPassword(String value) {
    hasMinLength = value.length >= 8;
    hasUppercase = value.contains(RegExp(r'[A-Z]'));
    hasLowercase = value.contains(RegExp(r'[a-z]'));
    hasNumber = value.contains(RegExp(r'[0-9]'));
    hasSpecialChar = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    emit(SignUpFormChanged());
  }

  void validatePassword(String password) {
    isPasswordValid = password.isNotEmpty && password.length >= 8;
    emit(SignUpFormChanged());
  }

  //? Login Methods
  void handleSignIn(GlobalKey<FormState> formKey) async {
    if (!formKey.currentState!.validate()) return;

    emit(AuthLoading());

    try {
      final response = await _authRepository.login(
        email: loginEmailController.text.trim(),
        password: loginPasswordController.text,
      );

      await response.fold(
        (error) {
          emit(LoginError(error));
        },
        (response) async {
          if (response.isSuccess && response.data != null) {
            try {
              await saveUserTokens(
                token: response.data!.accessToken!,
                refreshToken: response.data!.refreshToken!,
              );

              AppState.isLoggedIn = true;
              await SharedPrefHelper.setData(StorageKeys.isLoggedIn, true);
              // Disable guest mode on successful login
              await GuestModeService.disableGuestMode();
              AppState.isGuestMode = false;
              emit(LoginSuccess());
            } catch (e) {
              emit(LoginError(ApiErrorHandler.handle(e)));
            }
          } else {
            emit(
              LoginError(
                ApiErrorModel(
                  message: response.message ?? 'error_server',
                  type: ApiErrorType.server,
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(LoginError(ApiErrorHandler.handle(e)));
    }
  }

  //? Biometric Login
  Future<void> loginWithBiometric() async {
    emit(AuthLoading());
    try {
      final tokens = await TokenManager.getTokens();
      if (tokens != null && tokens.accessToken.isNotEmpty) {
        AppState.isLoggedIn = true;
        await SharedPrefHelper.setData(StorageKeys.isLoggedIn, true);
        log('Biometric login: session restored');
        emit(LoginSuccess());
      } else {
        log('Biometric login: no stored session');
        emit(AuthLoggedOut());
      }
    } catch (e) {
      log('Biometric login failed: $e');
      emit(AuthError(ApiErrorHandler.handle(e)));
    }
  }

  //? Sign Up Methods
  bool get isSignUpFormValid {
    return userNameController.text.isNotEmpty &&
        usernameController.text.isNotEmpty &&
        registrationEmailController.text.isNotEmpty &&
        mobileNumberController.text.isNotEmpty &&
        registerPasswordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        selectedRole != null &&
        selectedAcademicStageId != null &&
        selectedAcademicYearId != null &&
        selectedAcademicSectionId != null &&
        hasMinLength &&
        hasUppercase &&
        hasLowercase &&
        hasNumber &&
        hasSpecialChar;
  }

  void validateSignUpForm() {
    emit(SignUpFormChanged());
  }

  String _formatPhoneNumber(String phone) {
    if (phone.startsWith('+')) return phone;
    if (phone.startsWith('0')) return '+2$phone';
    return '+2$phone';
  }

  void handleSignup(GlobalKey<FormState> formKey) async {
    if (!formKey.currentState!.validate() || !isSignUpFormValid) return;

    emit(AuthLoading());
    currentSignupEmail = registrationEmailController.text.trim();

    try {
      final response = await _authRepository.signup(
        name: userNameController.text.trim(),
        username: usernameController.text.trim(),
        email: currentSignupEmail!,
        phoneNumber: _formatPhoneNumber(mobileNumberController.text.trim()),
        password: registerPasswordController.text,
        confirmPassword: confirmPasswordController.text,
        role: isTeacherSelected ? 'Teacher' : 'Student',
        academicStageId: selectedAcademicStageId ?? 1,
        academicYearId: selectedAcademicYearId ?? 1,
        academicSectionId: selectedAcademicSectionId ?? 1,
      );

      response.fold((error) => emit(SignUpError(message: error)), (
        response,
      ) async {
        if (response.isSuccess && response.data != null) {
          // New backend returns tokens directly after signup
          try {
            await saveUserTokens(
              token: response.data!.accessToken!,
              refreshToken: response.data!.refreshToken!,
            );

            AppState.isLoggedIn = true;
            await SharedPrefHelper.setData(StorageKeys.isLoggedIn, true);
            // Disable guest mode on successful signup
            await GuestModeService.disableGuestMode();
            AppState.isGuestMode = false;
            emit(SignUpSuccess(email: currentSignupEmail!));
          } catch (e) {
            emit(SignUpError(message: ApiErrorHandler.handle(e)));
          }
        } else {
          emit(
            SignUpError(
              message: ApiErrorModel(
                message: response.message ?? 'error_server',
                type: ApiErrorType.server,
              ),
            ),
          );
        }
      });
    } catch (e) {
      emit(SignUpError(message: ApiErrorHandler.handle(e)));
    }
  }

  //? OTP Methods
  void startTimer() {
    canResend = false;
    int secondsRemaining = 60;

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining <= 0) {
        canResend = true;
        timer.cancel();
        emit(AuthInitial());
      } else {
        secondsRemaining--;
        timerText = '${secondsRemaining}s';
        emit(AuthInitial());
      }
    });
  }

  void setEmail(String userEmail, {bool isReset = false}) {
    selectedEmail = userEmail;
    isPasswordReset = isReset;
    startTimer();
  }

  void updateUserInput(String value) {
    userOtp = value;
    isOtpValid = value.length == otpLength;
    emit(AuthInitial());
  }

  //? Verify OTP (Unified for both email verification and password reset)
  Future<void> verifyOtp() async {
    if (!isOtpValid) return;

    log(
      'Debugging verifyOtp - Email: $selectedEmail, OTP: $userOtp, isPasswordReset: $isPasswordReset',
    );

    try {
      emit(AuthLoading());

      final response = await _authRepository.verifyOtp(
        email: selectedEmail!,
        otp: userOtp,
      );

      response.fold((error) => emit(OtpError(message: error)), (success) {
        if (success.isSuccess) {
          // Save verification token for password reset
          if (isPasswordReset && success.data != null) {
            verificationToken = success.data
                .toString(); // Store the token string
            log('Saved verification token for password reset');
          }
          log('OTP verified successfully');
          emit(OtpSuccess());
        } else {
          emit(
            OtpError(
              message: ApiErrorModel(
                message: success.message ?? 'error_server',
                type: ApiErrorType.server,
              ),
            ),
          );
        }
      });
    } catch (e) {
      log('Debugging verifyOtp - Error: $e');
      emit(OtpError(message: ApiErrorHandler.handle(e)));
    }
  }

  //? Resend OTP
  Future<void> resendOtp() async {
    if (!canResend) return;

    try {
      emit(AuthLoading());

      // New backend: Just resend forgot password OTP
      final response = await _authRepository.forgotPassword(
        email: selectedEmail!,
      );

      response.fold(
        (error) {
          emit(OtpError(message: error));
        },
        (success) {
          if (success.isSuccess) {
            startTimer();
            emit(AuthInitial());
          } else {
            emit(
              OtpError(
                message: ApiErrorModel(
                  message: success.message ?? 'error_server',
                  type: ApiErrorType.server,
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(OtpError(message: ApiErrorHandler.handle(e)));
    }
  }

  //? Forgot Password Methods
  Future<void> sendForgotPasswordOTP({required String email}) async {
    emit(AuthLoading());

    try {
      final response = await _authRepository.forgotPassword(
        email: email.trim(),
      );

      response.fold(
        (error) {
          emit(AuthError(error));
        },
        (success) async {
          if (success.isSuccess) {
            selectedEmail = email;
            emit(AuthSuccess());
          } else {
            emit(
              AuthError(
                ApiErrorModel(
                  message: success.message ?? 'error_server',
                  type: ApiErrorType.server,
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(AuthError(ApiErrorHandler.handle(e)));
    }
  }

  //? Reset Password Methods
  void resetPassword(GlobalKey<FormState> formKey) async {
    if (!formKey.currentState!.validate()) return;

    // Validate verification token
    if (verificationToken == null || verificationToken!.isEmpty) {
      emit(
        ResetPasswordFailure(
          message: ApiErrorModel(
            message: 'Verification token missing. Please verify OTP first.',
            type: ApiErrorType.validation,
          ),
        ),
      );
      return;
    }

    emit(AuthLoading());

    try {
      final response = await _authRepository.resetPassword(
        email: selectedEmail!,
        newPassword: loginPasswordController.text,
        confirmPassword: confirmPasswordController.text,
        verificationToken: verificationToken!,
      );

      response.fold(
        (error) {
          emit(ResetPasswordFailure(message: error));
        },
        (success) async {
          if (success.isSuccess) {
            // Clear verification token
            verificationToken = null;
            await logout();
            emit(ResetPasswordSuccess());
          } else {
            emit(
              ResetPasswordFailure(
                message: ApiErrorModel(
                  message: success.message ?? 'error_server',
                  type: ApiErrorType.server,
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(ResetPasswordFailure(message: ApiErrorHandler.handle(e)));
    }
  }

  //? Token Management Methods
  Future<void> saveUserTokens({
    required String token,
    required String refreshToken,
  }) async {
    try {
      if (token.isEmpty || refreshToken.isEmpty) {
        throw Exception('Invalid tokens received');
      }

      await TokenManager.saveTokens(
        accessToken: token,
        refreshToken: refreshToken,
      );

      AppState.isLoggedIn = true;
      await SharedPrefHelper.setData(StorageKeys.isLoggedIn, true);

      await sl<CrashReportingService>().setUser(userId: null);

      emit(AuthSuccess());
    } catch (e) {
      emit(AuthError(ApiErrorHandler.handle(e)));
    }
  }

  //? Logout
  Future<void> logout() async {
    try {
      emit(AuthLoading());

      final tokens = await TokenManager.getTokens();
      if (tokens != null) {
        try {
          // Call new backend logout endpoint
          await _authRepository.logout();
        } catch (e) {
          log('Error calling logout endpoint: $e');
        }
      }

      await TokenManager.clearTokens();
      AppState.isLoggedIn = false;
      await SharedPrefHelper.setData(StorageKeys.isLoggedIn, false);

      await sl<CrashReportingService>().setUser(userId: null);

      clearAuthData();
      emit(AuthLoggedOut());
    } catch (e) {
      emit(AuthError(ApiErrorHandler.handle(e)));
    }
  }

  //? Delete Account
  Future<void> deleteAccount() async {
    try {
      emit(AuthLoading());

      final response = await _authRepository.deleteAccount();

      await response.fold(
        (error) async {
          emit(DeleteAccountError(error));
        },
        (success) async {
          if (success.isSuccess) {
            // Clear all local data (same as logout)
            await TokenManager.clearTokens();
            AppState.isLoggedIn = false;
            await SharedPrefHelper.setData(StorageKeys.isLoggedIn, false);

            log('Account deleted: all local data cleared');

            clearAuthData();
            emit(DeleteAccountSuccess());
          } else {
            emit(
              DeleteAccountError(
                ApiErrorModel(
                  message: success.message ?? 'error_server',
                  type: ApiErrorType.server,
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(DeleteAccountError(ApiErrorHandler.handle(e)));
    }
  }

  //? Check if user is logged in
  // Future<bool> checkIsLoggedIn() async {
  //   try {
  //     emit(AuthLoading());
  //     final isLoggedIn = await SharedPrefHelper.getBool(StorageKeys.isLoggedIn);
  //     AppState.isLoggedIn = isLoggedIn;

  //     final tokens = await TokenManager.getTokens();
  //     if (tokens == null) {
  //       AppState.isLoggedIn = false;
  //       await SharedPrefHelper.setData(StorageKeys.isLoggedIn, false);
  //       emit(AuthLoggedOut());
  //       return false;
  //     }

  //     try {
  //       final response = await _apiService.testAuthenticatedEndpoint();
  //       if (response.status == true) {
  //         AppState.isLoggedIn = true;
  //         await SharedPrefHelper.setData(StorageKeys.isLoggedIn, true);
  //         emit(AuthSuccess());
  //         return true;
  //       }

  //       final refreshResult = await refreshToken();
  //       return refreshResult.fold(
  //         (error) {
  //           AppState.isLoggedIn = false;
  //           SharedPrefHelper.setData(StorageKeys.isLoggedIn, false);
  //           return false;
  //         },
  //         (response) {
  //           AppState.isLoggedIn = response.isSuccess;
  //           SharedPrefHelper.setData(
  //               StorageKeys.isLoggedIn, response.isSuccess);
  //           return response.isSuccess;
  //         },
  //       );
  //     } catch (e) {
  //       log('Error checking auth status: $e');
  //       AppState.isLoggedIn = false;
  //       await SharedPrefHelper.setData(StorageKeys.isLoggedIn, false);
  //       emit(AuthLoggedOut());
  //       return false;
  //     }
  //   } catch (e) {
  //     emit(AuthError(ApiErrorModel(
  //       message: 'Failed to check login status: $e',
  //       status: false,
  //     )));
  //     return false;
  //   }
  // }

  //? Refresh Token
  Future<Either<ApiErrorModel, AuthResponse>> refreshToken() async {
    try {
      emit(AuthLoading());

      final tokens = await TokenManager.getTokens();
      if (tokens == null) {
        throw Exception('No tokens available for refresh');
      }

      final refreshRequest = AuthRequest.buildRefreshTokenRequest(
        accessToken: tokens.accessToken,
        refreshToken: tokens.refreshToken,
      );
      final response = await _apiService.refreshToken(refreshRequest);

      if (response.isSuccess && response.data != null) {
        await TokenManager.saveTokens(
          accessToken: response.data!.accessToken!,
          refreshToken: response.data!.refreshToken!,
        );
        emit(AuthSuccess());
        return Right(response);
      }

      emit(AuthError(ApiErrorModel.network()));
      return Left(ApiErrorModel.network());
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(AuthError(error));
      return Left(error);
    }
  }

  // bool isTokenExpired(String token) {
  //   try {
  //     final parts = token.split('.');
  //     if (parts.length != 3) return true;

  //     final payload = parts[1];
  //     final normalized = base64Url.normalize(payload);
  //     final resp = utf8.decode(base64Url.decode(normalized));
  //     final payloadMap = json.decode(resp);

  //     if (!payloadMap.containsKey('exp')) return true;

  //     final expiry =
  //         DateTime.fromMillisecondsSinceEpoch(payloadMap['exp'] * 1000);
  //     return DateTime.now().isAfter(expiry);
  //   } catch (e) {
  //     return true;
  //   }
  // }
  bool isTokenExpired(String token) {
    return TokenManager.isTokenExpired(token);
  }

  //? Change Password
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    try {
      emit(AuthLoading());

      final response = await _authRepository.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword,
      );

      response.fold((error) => emit(AuthError(error)), (success) {
        if (success.isSuccess) {
          emit(AuthSuccess());
        } else {
          emit(
            AuthError(
              ApiErrorModel(
                message: success.message ?? 'error_server',
                type: ApiErrorType.server,
              ),
            ),
          );
        }
      });
    } catch (e) {
      emit(AuthError(ApiErrorHandler.handle(e)));
    }
  }

  //? Get User Profile
  Future<void> getUserProfile() async {
    try {
      emit(AuthLoading());

      final response = await _authRepository.getUserProfile();

      response.fold((error) => emit(AuthError(error)), (success) {
        if (success.isSuccess && success.data != null) {
          log('User profile fetched: ${success.data!.email}');
          emit(AuthSuccess());
        } else {
          emit(
            AuthError(
              ApiErrorModel(
                message: success.message ?? 'error_server',
                type: ApiErrorType.server,
              ),
            ),
          );
        }
      });
    } catch (e) {
      emit(AuthError(ApiErrorHandler.handle(e)));
    }
  }

  // Academic data methods removed — add your own lookup endpoints here
  Future<void> fetchAcademicStages() async {}
  Future<void> fetchAcademicYears() async {}
  Future<void> fetchAcademicSections() async {}

  void clearAuthData() {
    loginEmailController.clear();
    loginPasswordController.clear();
    registrationEmailController.clear();
    registerPasswordController.clear();
    userNameController.clear();
    usernameController.clear();
    mobileNumberController.clear();
    confirmPasswordController.clear();
    selectedRole = null;
    selectedYear = null;
    selectedSpecialization = null;
    selectedAcademicStageId = null;
    selectedAcademicYearId = null;
    selectedAcademicSectionId = null;
    isPasswordVisible = false;
    isConfirmPasswordVisible = false;
    selectedEmail = null;
    verificationToken = null;
    userOtp = '';
    isOtpValid = false;
    isPasswordReset = false;
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    userNameController.dispose();
    usernameController.dispose();
    loginEmailController.dispose();
    registrationEmailController.dispose();
    registerPasswordController.dispose();
    mobileNumberController.dispose();
    loginPasswordController.dispose();
    confirmPasswordController.dispose();
    loginEmailFocusNode.dispose();
    loginPasswordFocusNode.dispose();
    registrationEmailFocusNode.dispose();
    registerPasswordFocusNode.dispose();
    userNameFocusNode.dispose();
    usernameFocusNode.dispose();
    mobileNumberFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    return super.close();
  }
}
