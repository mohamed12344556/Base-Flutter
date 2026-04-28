import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';
import '../logic/auth_cubit.dart';
import '../widgets/auth_glassmorphism_layout.dart';

class ResetPasswordView extends StatelessWidget {
  final Map<String, dynamic>? arguments;
  const ResetPasswordView({super.key, this.arguments});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final email = arguments?['email'] as String?;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccess) {
          // تغيير AuthSuccess
          context.pushNamedAndRemoveUntil(
            AppRoutes.loginView, // تغيير homeView
            predicate: (_) => false,
          );
        } else if (state is ResetPasswordFailure) {
          // تغيير AuthError
          context.showSnackBar(state.message.message);
        }
      },
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        // تحديث الإيميل في الـ cubit
        if (email != null) {
          cubit.selectedEmail = email;
        }
        return AuthGlassmorphismLayout(
          title: S.of(context).reset_pass_title_page,
          subtitle: S.of(context).tip_text,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppSpacing.v32,
                CustomTextFormField(
                  controller: cubit.loginPasswordController,
                  label: S.of(context).password_label_reset_page,
                  icon: Icons.lock_outlined,
                  isPassword: true,
                  isPasswordVisible: cubit.isPasswordVisible,
                  validator: LoginValidator.validatePassword,
                  onChanged: (value) => cubit.checkPassword(value),
                  onTogglePasswordVisibility: cubit.togglePasswordVisibility,
                ),
                _buildPasswordStrengthIndicator(context, cubit),
                AppSpacing.v16,
                CustomTextFormField(
                  controller: cubit.confirmPasswordController,
                  label: S.of(context).confirm_password_label,
                  icon: Icons.lock_outlined,
                  isPassword: true,
                  isPasswordVisible: cubit.isConfirmPasswordVisible,
                  validator: (value) =>
                      value != cubit.loginPasswordController.text
                      ? S.of(context).passwords_dont_match
                      : null,
                  onChanged: (_) {},
                  onTogglePasswordVisibility:
                      cubit.toggleConfirmPasswordVisibility,
                ),
                AppSpacing.v40,
                CustomButton(
                  text: S.of(context).reset_password_button,
                  onPressed: _canSubmit(cubit) && state is! AuthLoading
                      ? () => cubit.resetPassword(formKey)
                      : null,
                  isLoading: state is AuthLoading,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPasswordStrengthIndicator(
    BuildContext context,
    AuthCubit cubit,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCriteriaRow(
          context,
          S.of(context).password_criteria_min_length_full,
          cubit.hasMinLength,
        ),
        _buildCriteriaRow(
          context,
          S.of(context).password_criteria_uppercase_full,
          cubit.hasUppercase,
        ),
        _buildCriteriaRow(
          context,
          S.of(context).password_criteria_lowercase_full,
          cubit.hasLowercase,
        ),
        _buildCriteriaRow(
          context,
          S.of(context).password_criteria_number_full,
          cubit.hasNumber,
        ),
        _buildCriteriaRow(
          context,
          S.of(context).password_criteria_special_char_full,
          cubit.hasSpecialChar,
        ),
      ],
    );
  }

  Widget _buildCriteriaRow(BuildContext context, String text, bool isMet) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: AppPadding.v4,
      child: Row(
        children: [
          Icon(
            isMet ? Icons.check_circle : Icons.error,
            color: isMet
                ? Colors.green
                : (isDark ? Colors.white38 : Colors.grey),
            size: AppSizes.iconSm,
          ),
          AppSpacing.h8,
          Text(
            text,
            style: AppTextStyling.font12W400.copyWith(
              color: isMet
                  ? Colors.green
                  : (isDark ? Colors.white70 : Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  bool _canSubmit(AuthCubit cubit) {
    return cubit.hasMinLength &&
        cubit.hasUppercase &&
        cubit.hasLowercase &&
        cubit.hasNumber &&
        cubit.hasSpecialChar &&
        cubit.loginPasswordController.text.isNotEmpty &&
        cubit.confirmPasswordController.text.isNotEmpty &&
        cubit.loginPasswordController.text ==
            cubit.confirmPasswordController.text;
  }
}
