import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';
import '../logic/auth_cubit.dart';
import 'package:flutter/gestures.dart';
import '../widgets/auth_glassmorphism_layout.dart';
import '../widgets/contact_option_tile.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  String selectedOption = '';
  final Map<String, String> contactOptions = {'email': '', 'phone': ''};

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          context.pushNamed(
            AppRoutes.otpAuthenticateView,
            arguments: {
              'email': contactOptions['email'],
              'isPasswordReset': true,
            },
          );
        } else if (state is AuthError) {
          context.showSnackBar(state.error.message);
        }
      },
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();

        return AuthGlassmorphismLayout(
          title: S.of(context).forget_pass_title_page,
          subtitle: S.of(context).instruction_text,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...contactOptions.entries.map((entry) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: ContactOptionTile(
                    value: entry.key,
                    title: entry.key == 'email'
                        ? S.of(context).option_via_email
                        : S.of(context).option_via_sms,
                    subtitle: entry.value.isEmpty
                        ? entry.key == 'email'
                              ? S.of(context).enter_your_email
                              : S.of(context).enter_your_phone
                        : entry.value,
                    icon: entry.key == 'email'
                        ? Icons.email_outlined
                        : Icons.phone_android_outlined,
                    selectedOption: selectedOption,
                    onOptionSelected: (selectedValue, inputValue) {
                      setState(() {
                        selectedOption = selectedValue;
                        if (inputValue != null) {
                          contactOptions[selectedValue] = inputValue;
                        }
                      });
                    },
                  ),
                );
              }),
              AppSpacing.v24,
              CustomButton(
                text: S.of(context).button_continue,
                onPressed: _canSubmit(selectedOption, contactOptions, state)
                    ? () => _handleSubmit(cubit, selectedOption, contactOptions)
                    : null,
                isLoading: state is AuthLoading,
              ),
              AppSpacing.v16,
              CustomRichText(
                firstText: S.of(context).forgot_password_remember,
                secondText: S.of(context).sign_in_button,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => context.pushNamed(AppRoutes.loginView),
              ),
            ],
          ),
        );
      },
    );
  }

  bool _canSubmit(
    String selectedOption,
    Map<String, String> contactOptions,
    AuthState state,
  ) {
    return selectedOption.isNotEmpty &&
        contactOptions[selectedOption]!.isNotEmpty &&
        state is! AuthLoading;
  }

  void _handleSubmit(
    AuthCubit cubit,
    String selectedOption,
    Map<String, String> contactOptions,
  ) {
    if (selectedOption == 'email') {
      cubit.sendForgotPasswordOTP(email: contactOptions['email']!);
    }
  }
}
