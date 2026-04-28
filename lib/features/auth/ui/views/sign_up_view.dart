import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';
import '../logic/auth_cubit.dart';
import '../widgets/auth_glassmorphism_layout.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<AuthCubit>().selectedRole != 'Teacher') {
        context.read<AuthCubit>().fetchAcademicStages();
        context.read<AuthCubit>().fetchAcademicYears();
        context.read<AuthCubit>().fetchAcademicSections();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          context.showSuccessSnackBar(
            "Registration successful! Welcome ${state.email}",
          );
          context.pushNamedAndRemoveUntil(
            AppRoutes.hostView,
            predicate: (_) => false,
          );
        } else if (state is SignUpError) {
          context.showErrorSnackBar(state.message.message);
        }
      },
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return AuthGlassmorphismLayout(
          title: S.of(context).app_title,
          subtitle: S.of(context).signup_create_account,
          child: Form(
            key: _formKey,
            autovalidateMode: _autoValidate
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildFormFields(cubit),
                AppSpacing.v32,
                _buildSubmitButton(cubit, state),
                AppSpacing.v16,
                _buildLoginLink(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFormFields(AuthCubit cubit) {
    return Column(
      children: [
        CustomTextFormField(
          controller: cubit.userNameController,
          label: S.of(context).full_name_label,
          icon: Icons.person_outline,
          validator: _validateName,
          onChanged: (_) => _onFieldChanged(),
          focusNode: cubit.userNameFocusNode,
          nextFocusNode: cubit.usernameFocusNode,
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(cubit.usernameFocusNode);
          },
        ),
        AppSpacing.v16,
        CustomTextFormField(
          controller: cubit.usernameController,
          label: S.of(context).username_label,
          icon: Icons.alternate_email_outlined,
          validator: _validateUsername,
          onChanged: (_) => _onFieldChanged(),
          focusNode: cubit.usernameFocusNode,
          nextFocusNode: cubit.registrationEmailFocusNode,
          onFieldSubmitted: (value) {
            FocusScope.of(
              context,
            ).requestFocus(cubit.registrationEmailFocusNode);
          },
        ),
        AppSpacing.v16,
        CustomTextFormField(
          controller: cubit.registrationEmailController,
          label: S.of(context).email_label,
          icon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
          validator: _validateEmail,
          onChanged: (_) => _onFieldChanged(),
          focusNode: cubit.registrationEmailFocusNode,
          nextFocusNode: cubit.mobileNumberFocusNode,
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(cubit.mobileNumberFocusNode);
          },
        ),
        AppSpacing.v16,
        CustomTextFormField(
          controller: cubit.mobileNumberController,
          label: S.of(context).phone_number_label,
          icon: Icons.phone_outlined,
          keyboardType: TextInputType.phone,
          validator: _validatePhone,
          onChanged: (_) => _onFieldChanged(),
          focusNode: cubit.mobileNumberFocusNode,
          nextFocusNode: cubit.registerPasswordFocusNode,
          onFieldSubmitted: (value) {
            FocusScope.of(
              context,
            ).requestFocus(cubit.registerPasswordFocusNode);
          },
        ),
        AppSpacing.v16,
        _buildDropdowns(cubit),
        AppSpacing.v16,
        _buildPasswordFields(cubit),
      ],
    );
  }

  Widget _buildDropdowns(AuthCubit cubit) {
    return Column(
      children: [
        // Role Dropdown (Student/Teacher)
        CustomDropdown<String>(
          value: cubit.selectedRole,
          items: cubit.roles.map((role) {
            return DropdownMenuItem<String>(value: role, child: Text(role));
          }).toList(),
          hint: S.of(context).role_hint,
          icon: Icons.work_outline,
          onChanged: (value) {
            cubit.handleRoleChange(value);
            _onFieldChanged();
          },
        ),
        if (cubit.selectedRole != 'Teacher') ...[
          AppSpacing.v16,
          // Academic Stage Dropdown
          CustomDropdown<int>(
            value: cubit.selectedAcademicStageId,
            hint: S.of(context).academic_stage_hint,
            icon: Icons.school_outlined,
            isLoading: cubit.isLoadingAcademicData,
            items: cubit.academicStages
                .map(
                  (stage) => DropdownMenuItem<int>(
                    value: stage.id,
                    child: Text(stage.name ?? stage.stageName ?? 'Unknown'),
                  ),
                )
                .toList(),
            onChanged: (value) {
              cubit.handleAcademicStageChange(value);
              _onFieldChanged();
            },
            validator: (value) {
              if (value == null) {
                return S.of(context).field_required;
              }
              return null;
            },
          ),
        AppSpacing.v16,

        // Academic Year Dropdown
        CustomDropdown<int>(
          value: cubit.selectedAcademicYearId,
          hint: S.of(context).academic_year_hint,
          icon: Icons.calendar_today_outlined,
          isLoading: cubit.isLoadingAcademicData,
          items: cubit.academicYears
              .where(
                (year) => year.academicStageId == cubit.selectedAcademicStageId,
              )
              .map((year) {
                return DropdownMenuItem<int>(
                  value: year.id,
                  child: Text(year.nameInAr ?? year.name ?? ''),
                );
              })
              .toList(),
          onChanged: (value) {
            cubit.handleAcademicYearChange(value);
            _onFieldChanged();
          },
          validator: (value) {
            if (value == null) {
              return S.of(context).field_required;
            }
            return null;
          },
        ),
        AppSpacing.v16,

        // Academic Section Dropdown
        CustomDropdown<int>(
          value: cubit.selectedAcademicSectionId,
          hint: S.of(context).academic_section_hint,
          icon: Icons.class_outlined,
          isLoading: cubit.isLoadingAcademicData,
          items: cubit.academicSections
              .map(
                (section) => DropdownMenuItem<int>(
                  value: section.id,
                  child: Text(section.name ?? 'Unknown'),
                ),
              )
              .toList(),
          onChanged: (value) {
            cubit.handleAcademicSectionChange(value);
            _onFieldChanged();
          },
          validator: (value) {
            if (value == null) {
              return S.of(context).field_required;
            }
            return null;
          },
        ),
        ],
      ],
    );
  }

  Widget _buildPasswordFields(AuthCubit cubit) {
    return Column(
      children: [
        CustomTextFormField(
          controller: cubit.registerPasswordController,
          label: S.of(context).password_label,
          icon: Icons.lock_outline,
          isPassword: true,
          isPasswordVisible: cubit.isPasswordVisible,
          validator: _validatePassword,
          onTogglePasswordVisibility: cubit.togglePasswordVisibility,
          onChanged: (value) {
            cubit.checkPassword(value);
            _onFieldChanged();
          },
          focusNode: cubit.registerPasswordFocusNode,
          nextFocusNode: cubit.confirmPasswordFocusNode,
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(cubit.confirmPasswordFocusNode);
          },
        ),
        _buildPasswordCriteria(cubit),
        AppSpacing.v16,
        CustomTextFormField(
          controller: cubit.confirmPasswordController,
          label: S.of(context).confirm_password_label,
          icon: Icons.lock_outline,
          isPassword: true,
          isPasswordVisible: cubit.isConfirmPasswordVisible,
          validator: (value) => _validateConfirmPassword(value, cubit),
          onTogglePasswordVisibility: cubit.toggleConfirmPasswordVisibility,
          onChanged: (_) => _onFieldChanged(),
          focusNode: cubit.confirmPasswordFocusNode,
          isLastField: true,
        ),
      ],
    );
  }

  Widget _buildPasswordCriteria(AuthCubit cubit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCriteriaRow(
          S.of(context).password_criteria_min_length_full,
          cubit.hasMinLength,
        ),
        _buildCriteriaRow(
          S.of(context).password_criteria_uppercase_full,
          cubit.hasUppercase,
        ),
        _buildCriteriaRow(
          S.of(context).password_criteria_lowercase_full,
          cubit.hasLowercase,
        ),
        _buildCriteriaRow(
          S.of(context).password_criteria_number_full,
          cubit.hasNumber,
        ),
        _buildCriteriaRow(
          S.of(context).password_criteria_special_char_full,
          cubit.hasSpecialChar,
        ),
      ],
    );
  }

  Widget _buildCriteriaRow(String text, bool isMet) {
    return Padding(
      padding: AppPadding.v6,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isMet
              ? Colors.green.withValues(alpha: 0.1)
              : Colors.grey.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(AppSizes.radiusSm),
          border: Border.all(
            color: isMet
                ? Colors.green.withValues(alpha: 0.3)
                : Colors.grey.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Icon(
                isMet ? Icons.check_circle_outline : Icons.error_outline,
                key: ValueKey<bool>(isMet),
                color: isMet ? Colors.green : Colors.grey,
                size: 18.r,
              ),
            ),
            AppSpacing.h10,
            Expanded(
              child: Text(
                text,
                style: AppTextStyling.font13W400.copyWith(
                  color: isMet ? Colors.green.shade800 : Colors.grey.shade600,
                  fontWeight: isMet ? FontWeight.w500 : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(AuthCubit cubit, AuthState state) {
    return CustomButton(
      text: S.of(context).signup_button,
      isLoading: state is AuthLoading,
      onPressed: _canSubmit(cubit)
          ? () {
              FocusScope.of(context).unfocus();
              _handleSubmit(cubit);
            }
          : null,
    );
  }

  Widget _buildLoginLink() {
    return CustomRichText(
      firstText: S.of(context).signin_prompt,
      secondText: S.of(context).sign_in_button,
      recognizer: TapGestureRecognizer()
        ..onTap = () => context.pushNamed(AppRoutes.loginView),
    );
  }

  void _onFieldChanged() {
    setState(() {
      _autoValidate = true;
    });
    context.read<AuthCubit>().validateSignUpForm();
  }

  void _handleSubmit(AuthCubit cubit) {
    setState(() {
      _autoValidate = true;
    });

    if (_formKey.currentState!.validate()) {
      cubit.handleSignup(_formKey);
    }
  }

  bool _canSubmit(AuthCubit cubit) {
    if (!_autoValidate) return false;

    return cubit.userNameController.text.isNotEmpty &&
        cubit.usernameController.text.isNotEmpty &&
        cubit.registrationEmailController.text.isNotEmpty &&
        cubit.mobileNumberController.text.isNotEmpty &&
        cubit.selectedRole != null &&
        cubit.selectedAcademicStageId != null &&
        cubit.selectedAcademicYearId != null &&
        cubit.selectedAcademicSectionId != null &&
        cubit.hasMinLength &&
        cubit.hasUppercase &&
        cubit.hasLowercase &&
        cubit.hasNumber &&
        cubit.hasSpecialChar &&
        cubit.registerPasswordController.text ==
            cubit.confirmPasswordController.text;
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).field_required;
    }
    if (value.length < 3) {
      return S.of(context).name_min_length;
    }
    return null;
  }

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).field_required;
    }
    if (value.length < 3) {
      return S.of(context).username_min_length;
    }
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
      return S.of(context).username_invalid_chars;
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).field_required;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return S.of(context).valid_email;
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).field_required;
    }

    // Remove any spaces, dashes or other formatting characters
    final cleanNumber = value.replaceAll(RegExp(r'[\s-]+'), '');

    // Check if it's a valid Egyptian phone number (starts with 01 and 11 digits long)
    if (!cleanNumber.startsWith('01') || cleanNumber.length != 11) {
      return S.of(context).phone_invalid_format;
    }

    // Keep the general regex validation as a backup if needed
    if (!RegExp(r'^\+?[\d\s-]{10,}$').hasMatch(value)) {
      return S.of(context).field_required;
    }

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).field_required;
    }
    if (value.length < 8) {
      return S.of(context).password_min_length;
    }
    return null;
  }

  String? _validateConfirmPassword(String? value, AuthCubit cubit) {
    if (value == null || value.isEmpty) {
      return S.of(context).field_required;
    }
    if (value != cubit.registerPasswordController.text) {
      return S.of(context).passwords_dont_match;
    }
    return null;
  }
}
