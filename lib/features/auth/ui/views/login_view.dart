import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/api/google_sign_in_service.dart';
import '../../../../core/constants/key_strings.dart';
import '../../../../core/core.dart';
import '../../../../core/security/biometric_guard.dart';
import '../../../../core/security/local_auth_service.dart';
import '../../../../generated/l10n.dart';
import '../logic/auth_cubit.dart';
// TODO: Uncomment when social media login is ready
// import '../widgets/continue_with.dart';
import '../widgets/custom_forgot_password.dart';
// TODO: Uncomment when social media login is ready
import '../widgets/auth_glassmorphism_layout.dart';

Future<void> signIn(BuildContext context) async {
  try {
    log('بدء عملية تسجيل الدخول بـ Google...');

    // إظهار مؤشر التحميل
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    // تسجيل الدخول بـ Google
    final account = await GoogleSignInService.signIn();

    if (account != null) {
      log('Google user email: ${account.email}');
      log('Google user id: ${account.id}');
      log('Google user display name: ${account.displayName}');
      log('Google user photo: ${account.photoUrl}');

      // google_sign_in v7: idToken only — accessToken via authorizationClient
      final authentication = account.authentication;
      final idToken = authentication.idToken;
      // Use idToken as the credential sent to your backend
      final accessToken = idToken ?? '';

      if (accessToken.isNotEmpty) {
        log('تم الحصول على Access Token بنجاح');
        log('Token preview: ${accessToken.substring(0, 20)}...');
        if (idToken != null && idToken.isNotEmpty) {
          log('ID Token preview: ${idToken.substring(0, 20)}...');
        } else {
          log('No ID Token returned from Google Sign-In');
        }

        // حفظ بيانات المستخدم
        await GoogleSignInService.saveGoogleUserData(
          account: account,
          accessToken: accessToken,
          idToken: idToken,
        );

        // إخفاء مؤشر التحميل
        Navigator.of(context).pop();

        // التحقق من أن البيانات تم حفظها بنجاح
        await GoogleSignInService.debugStorageState();

        final token = await SharedPrefHelper.getSecuredString(
          StorageKeys.accessToken,
        );
        final isGoogleUser = await SharedPrefHelper.getBool(
          StorageKeys.isLoggedInAsGoogle,
        );
        final isLoggedIn = await SharedPrefHelper.getBool(
          StorageKeys.isLoggedIn,
        );

        log('بعد الحفظ:');
        log('- hasToken: ${token.isNotEmpty}');
        log('- isGoogleUser: $isGoogleUser');
        log('- isLoggedIn: $isLoggedIn');

        if (token.isNotEmpty && isGoogleUser && isLoggedIn) {
          // إظهار رسالة النجاح
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     backgroundColor: Colors.green,
          //     duration: const Duration(seconds: 2),
          //     content: Text('مرحباً، ${account.displayName ?? account.email}!'),
          //   ),
          // );
          context.showSuccessSnackBar(
            'مرحباً، ${account.displayName ?? account.email}!',
          );

          // تحديث AppState
          AppState.isLoggedIn = true;
          AppState.isLoggedInAsGoogle = true;

          // الانتقال إلى الصفحة الرئيسية
          context.pushNamedAndRemoveUntil(
            AppRoutes.hostView,
            predicate: (route) => false,
          );
        } else {
          throw Exception(
            'فشل في حفظ بيانات المستخدم - التحقق من البيانات فشل',
          );
        }
      } else {
        throw Exception('فشل في الحصول على رمز الوصول');
      }
    } else {
      Navigator.of(context).pop();
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(
      //     backgroundColor: Colors.orange,
      //     content: Text('تم إلغاء تسجيل الدخول'),
      //   ),
      // );
      context.showErrorSnackBar(S.of(context).login_cancelled);
    }
  } catch (e) {
    // إخفاء مؤشر التحميل
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }

    log('خطأ في تسجيل الدخول بـ Google: $e');

    // إظهار معلومات التشخيص
    await GoogleSignInService.debugStorageState();

    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     backgroundColor: Colors.red,
    //     duration: const Duration(seconds: 4),
    //     content: Text('فشل تسجيل الدخول: $e'),
    //   ),
    // );
    context.showErrorSnackBar(S.of(context).login_failed);
  }
}

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool _biometricAvailable = false;
  bool _biometricPrefEnabled = false;

  @override
  void initState() {
    super.initState();
    _checkBiometricAvailability();
  }

  Future<void> _checkBiometricAvailability() async {
    final prefEnabled = await SharedPrefHelper.getBool(StorageKeys.biometricLoginEnabled) ?? false;
    final available = await sl<LocalAuthService>().isAvailable;
    if (mounted) {
      setState(() {
        _biometricPrefEnabled = prefEnabled;
        _biometricAvailable = available;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final isDark = context.isDarkMode;

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.pushReplacementNamed(AppRoutes.hostView);
          context.showSuccessSnackBar(S.of(context).login_success);
        } else if (state is LoginError) {
          context.showErrorSnackBar(state.errorMessage.message);
        } else if (state is GuestModeActive) {
          context.pushNamedAndRemoveUntil(
            AppRoutes.hostView,
            predicate: (route) => false,
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();

        return AuthGlassmorphismLayout(
          title: S.of(context).app_title,
          subtitle: S.of(context).login_welcome_back,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).email_label,
                  style: AppTextStyling.font14W600.copyWith(
                    color: isDark ? Colors.white : AppColors.primary,
                  ),
                ),
                8.verticalSpace,
                CustomTextFormField(
                  controller: cubit.loginEmailController,
                  label: !cubit.isTeacherSelected
                      ? S.of(context).email_placeholder_teacher
                      : S.of(context).email_placeholder_student,
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => value?.isEmpty == true
                      ? S.of(context).field_required
                      : null,
                  onChanged: (value) => cubit.validateEmail(value),
                  focusNode: cubit.loginEmailFocusNode,
                  nextFocusNode: cubit.loginPasswordFocusNode,
                  isLastField: false,
                  onFieldSubmitted: (value) {
                    FocusScope.of(
                      context,
                    ).requestFocus(cubit.loginPasswordFocusNode);
                  },
                ),
                20.verticalSpace,
                Text(
                  S.of(context).password_label,
                  style: AppTextStyling.font14W600.copyWith(
                    color: isDark ? Colors.white : AppColors.primary,
                  ),
                ),
                8.verticalSpace,
                CustomTextFormField(
                  controller: cubit.loginPasswordController,
                  label: S.of(context).password_placeholder,
                  icon: Icons.lock_outline,
                  isPassword: true,
                  isPasswordVisible: cubit.isPasswordVisible,
                  validator: LoginValidator.validatePassword,
                  onTogglePasswordVisibility: cubit.togglePasswordVisibility,
                  onChanged: (value) => cubit.validatePassword(value),
                  focusNode: cubit.loginPasswordFocusNode,
                  isLastField: true,
                ),
                const CustomForgotPasswordText(),

                24.verticalSpace,
                CustomButton(
                  text: S.of(context).sign_in_button,
                  isLoading: state is AuthLoading,
                  onPressed: _canSubmit(cubit)
                      ? () {
                          FocusScope.of(context).unfocus();
                          cubit.handleSignIn(formKey);
                        }
                      : null,
                ),

                if (_biometricAvailable && _biometricPrefEnabled) ...[
                  16.verticalSpace,
                  Center(
                    child: OutlinedButton.icon(
                      onPressed: () async {
                        final reason = S.of(context).biometric_reason_login;
                        final proceed = await BiometricGuard.verify(
                          context,
                          reason: reason,
                        );
                        if (proceed && context.mounted) {
                          context.read<AuthCubit>().loginWithBiometric();
                        }
                      },
                      icon: const Icon(Icons.fingerprint),
                      label: Text(S.of(context).biometric_login_button),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                ],

                24.verticalSpace,

                Center(
                  child: CustomRichText(
                    firstText: S.of(context).sign_up_prompt,
                    secondText: S.of(context).signup_button,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.pushNamed(AppRoutes.registerView),
                  ),
                ),

                20.verticalSpace,

                // ─── or ───
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: isDark ? Colors.white24 : Colors.grey[300],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        context.isArabic ? 'أو' : 'or',
                        style: TextStyle(
                          fontSize: 13,
                          color: isDark ? Colors.white38 : Colors.grey[500],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: isDark ? Colors.white24 : Colors.grey[300],
                      ),
                    ),
                  ],
                ),

                16.verticalSpace,

                // Continue as Guest
                Center(
                  child: TextButton(
                    onPressed: () => cubit.enterGuestMode(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          context.isArabic ? 'تصفح كزائر' : 'Continue as Guest',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: isDark ? Colors.white70 : Colors.grey[600],
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: isDark ? Colors.white70 : Colors.grey[600],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _canSubmit(AuthCubit cubit) {
    return cubit.loginEmailController.text.isNotEmpty &&
        cubit.loginPasswordController.text.isNotEmpty;
  }
}
