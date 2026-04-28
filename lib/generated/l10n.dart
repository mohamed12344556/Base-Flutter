// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `EOL`
  String get app_title {
    return Intl.message('EOL', name: 'app_title', desc: '', args: []);
  }

  /// `Apple sign in`
  String get apple_sign_in {
    return Intl.message(
      'Apple sign in',
      name: 'apple_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get button_continue {
    return Intl.message(
      'Continue',
      name: 'button_continue',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password_label {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password_label',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get continue_with {
    return Intl.message(
      'Or continue with',
      name: 'continue_with',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email_label {
    return Intl.message('Email', name: 'email_label', desc: '', args: []);
  }

  /// `student@student.eol.edu`
  String get email_placeholder_student {
    return Intl.message(
      'student@student.eol.edu',
      name: 'email_placeholder_student',
      desc: '',
      args: [],
    );
  }

  /// `teacher@teacher.eol.edu`
  String get email_placeholder_teacher {
    return Intl.message(
      'teacher@teacher.eol.edu',
      name: 'email_placeholder_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get email_required {
    return Intl.message(
      'Email is required',
      name: 'email_required',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get field_required {
    return Intl.message(
      'This field is required',
      name: 'field_required',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forget_pass_title_page {
    return Intl.message(
      'Forgot Password',
      name: 'forget_pass_title_page',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name_label {
    return Intl.message(
      'Full Name',
      name: 'full_name_label',
      desc: '',
      args: [],
    );
  }

  /// `Google sign in`
  String get google_sign_in {
    return Intl.message(
      'Google sign in',
      name: 'google_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Select which contact details should we use to\nReset Your Password`
  String get instruction_text {
    return Intl.message(
      'Select which contact details should we use to\nReset Your Password',
      name: 'instruction_text',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get invalid_email_format {
    return Intl.message(
      'Invalid email format',
      name: 'invalid_email_format',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button {
    return Intl.message('Login', name: 'login_button', desc: '', args: []);
  }

  /// `Via Email`
  String get option_via_email {
    return Intl.message(
      'Via Email',
      name: 'option_via_email',
      desc: '',
      args: [],
    );
  }

  /// `Via SMS`
  String get option_via_sms {
    return Intl.message('Via SMS', name: 'option_via_sms', desc: '', args: []);
  }

  /// `Enter the 4-digit OTP code that has been sent via SMS\nto complete your account registration`
  String get otp_instruction {
    return Intl.message(
      'Enter the 4-digit OTP code that has been sent via SMS\nto complete your account registration',
      name: 'otp_instruction',
      desc: '',
      args: [],
    );
  }

  /// `OTP Authenticate`
  String get otp_page_title {
    return Intl.message(
      'OTP Authenticate',
      name: 'otp_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Lowercase`
  String get password_criteria_lowercase {
    return Intl.message(
      'Lowercase',
      name: 'password_criteria_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `8+ Characters`
  String get password_criteria_min_length {
    return Intl.message(
      '8+ Characters',
      name: 'password_criteria_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get password_criteria_number {
    return Intl.message(
      'Number',
      name: 'password_criteria_number',
      desc: '',
      args: [],
    );
  }

  /// `Special Char`
  String get password_criteria_special_char {
    return Intl.message(
      'Special Char',
      name: 'password_criteria_special_char',
      desc: '',
      args: [],
    );
  }

  /// `Uppercase`
  String get password_criteria_uppercase {
    return Intl.message(
      'Uppercase',
      name: 'password_criteria_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_label {
    return Intl.message('Password', name: 'password_label', desc: '', args: []);
  }

  /// `Enter new password`
  String get password_label_reset_page {
    return Intl.message(
      'Enter new password',
      name: 'password_label_reset_page',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get password_min_length {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'password_min_length',
      desc: '',
      args: [],
    );
  }

  /// `at least 8 characters`
  String get password_min_length_reset {
    return Intl.message(
      'at least 8 characters',
      name: 'password_min_length_reset',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_placeholder {
    return Intl.message(
      'Password',
      name: 'password_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get password_required {
    return Intl.message(
      'Password is required',
      name: 'password_required',
      desc: '',
      args: [],
    );
  }

  /// `Please meet all password requirements`
  String get password_requirements {
    return Intl.message(
      'Please meet all password requirements',
      name: 'password_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_dont_match {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number_label {
    return Intl.message(
      'Phone Number',
      name: 'phone_number_label',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend_button {
    return Intl.message('Resend', name: 'resend_button', desc: '', args: []);
  }

  /// `Haven't got the confirmation code yet?`
  String get resend_instruction {
    return Intl.message(
      'Haven\'t got the confirmation code yet?',
      name: 'resend_instruction',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_pass_title_page {
    return Intl.message(
      'Reset Password',
      name: 'reset_pass_title_page',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password_button {
    return Intl.message(
      'Reset Password',
      name: 'reset_password_button',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get role_hint {
    return Intl.message('Role', name: 'role_hint', desc: '', args: []);
  }

  /// `Student`
  String get role_student {
    return Intl.message('Student', name: 'role_student', desc: '', args: []);
  }

  /// `Teacher`
  String get role_teacher {
    return Intl.message('Teacher', name: 'role_teacher', desc: '', args: []);
  }

  /// `Student\nTeacher`
  String get roles {
    return Intl.message('Student\nTeacher', name: 'roles', desc: '', args: []);
  }

  /// `Reset your password`
  String get screen_title {
    return Intl.message(
      'Reset your password',
      name: 'screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Please select an option`
  String get select_option {
    return Intl.message(
      'Please select an option',
      name: 'select_option',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in_button {
    return Intl.message('Sign In', name: 'sign_in_button', desc: '', args: []);
  }

  /// `Don't have an account? `
  String get sign_up_prompt {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'sign_up_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Already have an Account? `
  String get signin_prompt {
    return Intl.message(
      'Already have an Account? ',
      name: 'signin_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup_button {
    return Intl.message('Sign up', name: 'signup_button', desc: '', args: []);
  }

  /// `Specialization`
  String get specialization_hint {
    return Intl.message(
      'Specialization',
      name: 'specialization_hint',
      desc: '',
      args: [],
    );
  }

  /// `Scientific\nScience (Mathematics)\nLiterature`
  String get specializations {
    return Intl.message(
      'Scientific\nScience (Mathematics)\nLiterature',
      name: 'specializations',
      desc: '',
      args: [],
    );
  }

  /// `Please use a valid student email (@student.eol.edu)`
  String get student_email_required {
    return Intl.message(
      'Please use a valid student email (@student.eol.edu)',
      name: 'student_email_required',
      desc: '',
      args: [],
    );
  }

  /// `Please use a valid teacher email (@teacher.eol.edu)`
  String get teacher_email_required {
    return Intl.message(
      'Please use a valid teacher email (@teacher.eol.edu)',
      name: 'teacher_email_required',
      desc: '',
      args: [],
    );
  }

  /// `Here's a tip: Use a combination of\nNumbers, Uppercase, Lowercase and\nSpecial characters`
  String get tip_text {
    return Intl.message(
      'Here\'s a tip: Use a combination of\nNumbers, Uppercase, Lowercase and\nSpecial characters',
      name: 'tip_text',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get valid_email {
    return Intl.message(
      'Please enter a valid email address',
      name: 'valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name (at least 2 names)`
  String get valid_full_name {
    return Intl.message(
      'Please enter your full name (at least 2 names)',
      name: 'valid_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get valid_phone_number {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'valid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Verification code has been sent to`
  String get verification_code_has_been_sent_to {
    return Intl.message(
      'Verification code has been sent to',
      name: 'verification_code_has_been_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify_button {
    return Intl.message('Verify', name: 'verify_button', desc: '', args: []);
  }

  /// `Welcome. Let's start by creating your\naccount or sign in if you already have one`
  String get welcome_messagewelcome_message {
    return Intl.message(
      'Welcome. Let\'s start by creating your\naccount or sign in if you already have one',
      name: 'welcome_messagewelcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year_hint {
    return Intl.message('Year', name: 'year_hint', desc: '', args: []);
  }

  /// `First Year\nSecond Year\nThird Year`
  String get years {
    return Intl.message(
      'First Year\nSecond Year\nThird Year',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `Language Settings`
  String get language_settings {
    return Intl.message(
      'Language Settings',
      name: 'language_settings',
      desc: '',
      args: [],
    );
  }

  /// `Search languages...`
  String get search_languages {
    return Intl.message(
      'Search languages...',
      name: 'search_languages',
      desc: '',
      args: [],
    );
  }

  /// `Current Language`
  String get current_language {
    return Intl.message(
      'Current Language',
      name: 'current_language',
      desc: '',
      args: [],
    );
  }

  /// `Apply Changes`
  String get apply_changes {
    return Intl.message(
      'Apply Changes',
      name: 'apply_changes',
      desc: '',
      args: [],
    );
  }

  /// `Language changed successfully`
  String get language_changed {
    return Intl.message(
      'Language changed successfully',
      name: 'language_changed',
      desc: '',
      args: [],
    );
  }

  /// `Ad`
  String get ad_label {
    return Intl.message('Ad', name: 'ad_label', desc: '', args: []);
  }

  /// `Explore More →`
  String get ad_explore_more {
    return Intl.message(
      'Explore More →',
      name: 'ad_explore_more',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_your_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_your_phone {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Remember your password? `
  String get forgot_password_remember {
    return Intl.message(
      'Remember your password? ',
      name: 'forgot_password_remember',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back! Please sign in to continue.`
  String get login_welcome_back {
    return Intl.message(
      'Welcome back! Please sign in to continue.',
      name: 'login_welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your Email`
  String get otp_verify_email_title {
    return Intl.message(
      'Verify Your Email',
      name: 'otp_verify_email_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP code sent to your email to reset your password`
  String get otp_reset_subtitle {
    return Intl.message(
      'Enter the OTP code sent to your email to reset your password',
      name: 'otp_reset_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP code sent to your email to verify your account`
  String get otp_verify_subtitle {
    return Intl.message(
      'Enter the OTP code sent to your email to verify your account',
      name: 'otp_verify_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters`
  String get password_criteria_min_length_full {
    return Intl.message(
      'At least 8 characters',
      name: 'password_criteria_min_length_full',
      desc: '',
      args: [],
    );
  }

  /// `At least one uppercase letter`
  String get password_criteria_uppercase_full {
    return Intl.message(
      'At least one uppercase letter',
      name: 'password_criteria_uppercase_full',
      desc: '',
      args: [],
    );
  }

  /// `At least one lowercase letter`
  String get password_criteria_lowercase_full {
    return Intl.message(
      'At least one lowercase letter',
      name: 'password_criteria_lowercase_full',
      desc: '',
      args: [],
    );
  }

  /// `At least one number`
  String get password_criteria_number_full {
    return Intl.message(
      'At least one number',
      name: 'password_criteria_number_full',
      desc: '',
      args: [],
    );
  }

  /// `At least one special character`
  String get password_criteria_special_char_full {
    return Intl.message(
      'At least one special character',
      name: 'password_criteria_special_char_full',
      desc: '',
      args: [],
    );
  }

  /// `Create your account to get started`
  String get signup_create_account {
    return Intl.message(
      'Create your account to get started',
      name: 'signup_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username_label {
    return Intl.message('Username', name: 'username_label', desc: '', args: []);
  }

  /// `Academic Stage`
  String get academic_stage_hint {
    return Intl.message(
      'Academic Stage',
      name: 'academic_stage_hint',
      desc: '',
      args: [],
    );
  }

  /// `Academic Year`
  String get academic_year_hint {
    return Intl.message(
      'Academic Year',
      name: 'academic_year_hint',
      desc: '',
      args: [],
    );
  }

  /// `Academic Section`
  String get academic_section_hint {
    return Intl.message(
      'Academic Section',
      name: 'academic_section_hint',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at least 2 words`
  String get name_min_length {
    return Intl.message(
      'Name must be at least 2 words',
      name: 'name_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Username must be at least 3 characters`
  String get username_min_length {
    return Intl.message(
      'Username must be at least 3 characters',
      name: 'username_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Username can only contain letters, numbers, and underscores`
  String get username_invalid_chars {
    return Intl.message(
      'Username can only contain letters, numbers, and underscores',
      name: 'username_invalid_chars',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get phone_invalid_format {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'phone_invalid_format',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection. Please check your connection and try again.`
  String get error_network {
    return Intl.message(
      'No internet connection. Please check your connection and try again.',
      name: 'error_network',
      desc: '',
      args: [],
    );
  }

  /// `Server Error`
  String get error_server {
    return Intl.message(
      'Server Error',
      name: 'error_server',
      desc: '',
      args: [],
    );
  }

  /// `Your session has expired. Please log in again`
  String get error_auth {
    return Intl.message(
      'Your session has expired. Please log in again',
      name: 'error_auth',
      desc: '',
      args: [],
    );
  }

  /// `Please check the highlighted fields and try again.`
  String get error_validation {
    return Intl.message(
      'Please check the highlighted fields and try again.',
      name: 'error_validation',
      desc: '',
      args: [],
    );
  }

  /// `Not Found`
  String get error_not_found {
    return Intl.message(
      'Not Found',
      name: 'error_not_found',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. Please try again.`
  String get error_unknown {
    return Intl.message(
      'An unexpected error occurred. Please try again.',
      name: 'error_unknown',
      desc: '',
      args: [],
    );
  }

  /// `This content is not available offline`
  String get error_offline_content_expired {
    return Intl.message(
      'This content is not available offline',
      name: 'error_offline_content_expired',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get error_retry {
    return Intl.message('Try Again', name: 'error_retry', desc: '', args: []);
  }

  /// `Last updated {time} ago`
  String last_updated_ago(Object time) {
    return Intl.message(
      'Last updated $time ago',
      name: 'last_updated_ago',
      desc: '',
      args: [time],
    );
  }

  /// `Login was cancelled`
  String get login_cancelled {
    return Intl.message(
      'Login was cancelled',
      name: 'login_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Login failed. Please try again`
  String get login_failed {
    return Intl.message(
      'Login failed. Please try again',
      name: 'login_failed',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_title {
    return Intl.message('Settings', name: 'settings_title', desc: '', args: []);
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Payment Option`
  String get payment_option {
    return Intl.message(
      'Payment Option',
      name: 'payment_option',
      desc: '',
      args: [],
    );
  }

  /// `Subscription Plans`
  String get subscription_plans {
    return Intl.message(
      'Subscription Plans',
      name: 'subscription_plans',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message('Security', name: 'security', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message('Dark Mode', name: 'dark_mode', desc: '', args: []);
  }

  /// `Terms & Conditions`
  String get terms_and_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get help_center {
    return Intl.message('Help Center', name: 'help_center', desc: '', args: []);
  }

  /// `Invite Friends`
  String get invite_friends {
    return Intl.message(
      'Invite Friends',
      name: 'invite_friends',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `ACCOUNT`
  String get account_section {
    return Intl.message('ACCOUNT', name: 'account_section', desc: '', args: []);
  }

  /// `PREFERENCES`
  String get preferences_section {
    return Intl.message(
      'PREFERENCES',
      name: 'preferences_section',
      desc: '',
      args: [],
    );
  }

  /// `MORE`
  String get more_section {
    return Intl.message('MORE', name: 'more_section', desc: '', args: []);
  }

  /// `Your Name`
  String get your_name {
    return Intl.message('Your Name', name: 'your_name', desc: '', args: []);
  }

  /// `Courses`
  String get courses {
    return Intl.message('Courses', name: 'courses', desc: '', args: []);
  }

  /// `Notes`
  String get notes_title {
    return Intl.message('Notes', name: 'notes_title', desc: '', args: []);
  }

  /// `Create Your First Note`
  String get create_first_note {
    return Intl.message(
      'Create Your First Note',
      name: 'create_first_note',
      desc: '',
      args: [],
    );
  }

  /// `Add a note about anything (your thoughts on climate change, or your history essay) and share it with the world.`
  String get create_first_note_description {
    return Intl.message(
      'Add a note about anything (your thoughts on climate change, or your history essay) and share it with the world.',
      name: 'create_first_note_description',
      desc: '',
      args: [],
    );
  }

  /// `Create Note`
  String get create_note {
    return Intl.message('Create Note', name: 'create_note', desc: '', args: []);
  }

  /// `Note Title`
  String get note_title_hint {
    return Intl.message(
      'Note Title',
      name: 'note_title_hint',
      desc: '',
      args: [],
    );
  }

  /// `Start writing your thoughts...`
  String get note_content_hint {
    return Intl.message(
      'Start writing your thoughts...',
      name: 'note_content_hint',
      desc: '',
      args: [],
    );
  }

  /// `Edit Note`
  String get edit_note {
    return Intl.message('Edit Note', name: 'edit_note', desc: '', args: []);
  }

  /// `New Note`
  String get new_note {
    return Intl.message('New Note', name: 'new_note', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Draft`
  String get draft {
    return Intl.message('Draft', name: 'draft', desc: '', args: []);
  }

  /// `Last modified: {time}`
  String last_modified(Object time) {
    return Intl.message(
      'Last modified: $time',
      name: 'last_modified',
      desc: '',
      args: [time],
    );
  }

  /// `{count} characters`
  String characters_count(Object count) {
    return Intl.message(
      '$count characters',
      name: 'characters_count',
      desc: '',
      args: [count],
    );
  }

  /// `Note not found`
  String get note_not_found {
    return Intl.message(
      'Note not found',
      name: 'note_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Error loading note`
  String get error_loading_note {
    return Intl.message(
      'Error loading note',
      name: 'error_loading_note',
      desc: '',
      args: [],
    );
  }

  /// `Please add some content to your note`
  String get note_empty_content {
    return Intl.message(
      'Please add some content to your note',
      name: 'note_empty_content',
      desc: '',
      args: [],
    );
  }

  /// `Untitled`
  String get untitled {
    return Intl.message('Untitled', name: 'untitled', desc: '', args: []);
  }

  /// `Note updated successfully`
  String get note_updated {
    return Intl.message(
      'Note updated successfully',
      name: 'note_updated',
      desc: '',
      args: [],
    );
  }

  /// `Note saved successfully`
  String get note_saved {
    return Intl.message(
      'Note saved successfully',
      name: 'note_saved',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save note`
  String get note_save_failed {
    return Intl.message(
      'Failed to save note',
      name: 'note_save_failed',
      desc: '',
      args: [],
    );
  }

  /// `Note deleted successfully`
  String get note_deleted {
    return Intl.message(
      'Note deleted successfully',
      name: 'note_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Delete Note`
  String get delete_note {
    return Intl.message('Delete Note', name: 'delete_note', desc: '', args: []);
  }

  /// `Are you sure you want to delete this note? This action cannot be undone.`
  String get delete_note_confirm {
    return Intl.message(
      'Are you sure you want to delete this note? This action cannot be undone.',
      name: 'delete_note_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Share`
  String get share {
    return Intl.message('Share', name: 'share', desc: '', args: []);
  }

  /// `Share functionality coming soon`
  String get share_coming_soon {
    return Intl.message(
      'Share functionality coming soon',
      name: 'share_coming_soon',
      desc: '',
      args: [],
    );
  }

  /// `Untitled Note`
  String get untitled_note {
    return Intl.message(
      'Untitled Note',
      name: 'untitled_note',
      desc: '',
      args: [],
    );
  }

  /// `{count} words`
  String words_count(Object count) {
    return Intl.message(
      '$count words',
      name: 'words_count',
      desc: '',
      args: [count],
    );
  }

  /// `Just now`
  String get just_now {
    return Intl.message('Just now', name: 'just_now', desc: '', args: []);
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message('Yesterday', name: 'yesterday', desc: '', args: []);
  }

  /// `{count} min ago`
  String min_ago(Object count) {
    return Intl.message(
      '$count min ago',
      name: 'min_ago',
      desc: '',
      args: [count],
    );
  }

  /// `{count}h ago`
  String hours_ago(Object count) {
    return Intl.message(
      '${count}h ago',
      name: 'hours_ago',
      desc: '',
      args: [count],
    );
  }

  /// `{count}d ago`
  String days_ago(Object count) {
    return Intl.message(
      '${count}d ago',
      name: 'days_ago',
      desc: '',
      args: [count],
    );
  }

  /// `Add New Event`
  String get add_new_event {
    return Intl.message(
      'Add New Event',
      name: 'add_new_event',
      desc: '',
      args: [],
    );
  }

  /// `Event Title`
  String get event_title_label {
    return Intl.message(
      'Event Title',
      name: 'event_title_label',
      desc: '',
      args: [],
    );
  }

  /// `Place`
  String get place_label {
    return Intl.message('Place', name: 'place_label', desc: '', args: []);
  }

  /// `Notes`
  String get notes_label {
    return Intl.message('Notes', name: 'notes_label', desc: '', args: []);
  }

  /// `Start Time`
  String get start_time {
    return Intl.message('Start Time', name: 'start_time', desc: '', args: []);
  }

  /// `End Time`
  String get end_time {
    return Intl.message('End Time', name: 'end_time', desc: '', args: []);
  }

  /// `Add Event`
  String get add_event {
    return Intl.message('Add Event', name: 'add_event', desc: '', args: []);
  }

  /// `Color`
  String get color_label {
    return Intl.message('Color', name: 'color_label', desc: '', args: []);
  }

  /// `Please enter event title`
  String get please_enter_event_title {
    return Intl.message(
      'Please enter event title',
      name: 'please_enter_event_title',
      desc: '',
      args: [],
    );
  }

  /// `No place`
  String get no_place {
    return Intl.message('No place', name: 'no_place', desc: '', args: []);
  }

  /// `No notes`
  String get no_notes {
    return Intl.message('No notes', name: 'no_notes', desc: '', args: []);
  }

  /// `PERSONAL INFO`
  String get personal_info {
    return Intl.message(
      'PERSONAL INFO',
      name: 'personal_info',
      desc: '',
      args: [],
    );
  }

  /// `ACADEMIC INFO`
  String get academic_info {
    return Intl.message(
      'ACADEMIC INFO',
      name: 'academic_info',
      desc: '',
      args: [],
    );
  }

  /// `Nickname`
  String get nickname_label {
    return Intl.message('Nickname', name: 'nickname_label', desc: '', args: []);
  }

  /// `Date of Birth`
  String get date_of_birth_label {
    return Intl.message(
      'Date of Birth',
      name: 'date_of_birth_label',
      desc: '',
      args: [],
    );
  }

  /// `Select Gender`
  String get select_gender {
    return Intl.message(
      'Select Gender',
      name: 'select_gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Select Academic Stage`
  String get select_academic_stage {
    return Intl.message(
      'Select Academic Stage',
      name: 'select_academic_stage',
      desc: '',
      args: [],
    );
  }

  /// `Select Academic Year`
  String get select_academic_year {
    return Intl.message(
      'Select Academic Year',
      name: 'select_academic_year',
      desc: '',
      args: [],
    );
  }

  /// `Select Section`
  String get select_section {
    return Intl.message(
      'Select Section',
      name: 'select_section',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Please enter {field}`
  String please_enter_field(Object field) {
    return Intl.message(
      'Please enter $field',
      name: 'please_enter_field',
      desc: '',
      args: [field],
    );
  }

  /// `Profile updated successfully`
  String get profile_updated {
    return Intl.message(
      'Profile updated successfully',
      name: 'profile_updated',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred`
  String get an_error_occurred {
    return Intl.message(
      'An error occurred',
      name: 'an_error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Security Settings`
  String get security_settings {
    return Intl.message(
      'Security Settings',
      name: 'security_settings',
      desc: '',
      args: [],
    );
  }

  /// `Password & Authentication`
  String get password_and_auth {
    return Intl.message(
      'Password & Authentication',
      name: 'password_and_auth',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Update your account password`
  String get update_password_desc {
    return Intl.message(
      'Update your account password',
      name: 'update_password_desc',
      desc: '',
      args: [],
    );
  }

  /// `Biometric Login`
  String get biometric_login {
    return Intl.message(
      'Biometric Login',
      name: 'biometric_login',
      desc: '',
      args: [],
    );
  }

  /// `Use fingerprint or face recognition`
  String get biometric_desc {
    return Intl.message(
      'Use fingerprint or face recognition',
      name: 'biometric_desc',
      desc: '',
      args: [],
    );
  }

  /// `Two-Factor Authentication`
  String get two_factor_auth {
    return Intl.message(
      'Two-Factor Authentication',
      name: 'two_factor_auth',
      desc: '',
      args: [],
    );
  }

  /// `Add an extra layer of security`
  String get two_factor_desc {
    return Intl.message(
      'Add an extra layer of security',
      name: 'two_factor_desc',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Settings`
  String get privacy_settings {
    return Intl.message(
      'Privacy Settings',
      name: 'privacy_settings',
      desc: '',
      args: [],
    );
  }

  /// `Auto Logout`
  String get auto_logout {
    return Intl.message('Auto Logout', name: 'auto_logout', desc: '', args: []);
  }

  /// `Automatically logout after 30 minutes`
  String get auto_logout_desc {
    return Intl.message(
      'Automatically logout after 30 minutes',
      name: 'auto_logout_desc',
      desc: '',
      args: [],
    );
  }

  /// `Login Alerts`
  String get login_alerts {
    return Intl.message(
      'Login Alerts',
      name: 'login_alerts',
      desc: '',
      args: [],
    );
  }

  /// `Get notified of new login attempts`
  String get login_alerts_desc {
    return Intl.message(
      'Get notified of new login attempts',
      name: 'login_alerts_desc',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `View our privacy policy`
  String get privacy_policy_desc {
    return Intl.message(
      'View our privacy policy',
      name: 'privacy_policy_desc',
      desc: '',
      args: [],
    );
  }

  /// `Account Management`
  String get account_management {
    return Intl.message(
      'Account Management',
      name: 'account_management',
      desc: '',
      args: [],
    );
  }

  /// `Download My Data`
  String get download_data {
    return Intl.message(
      'Download My Data',
      name: 'download_data',
      desc: '',
      args: [],
    );
  }

  /// `Download all your account data`
  String get download_data_desc {
    return Intl.message(
      'Download all your account data',
      name: 'download_data_desc',
      desc: '',
      args: [],
    );
  }

  /// `Active Sessions`
  String get active_sessions {
    return Intl.message(
      'Active Sessions',
      name: 'active_sessions',
      desc: '',
      args: [],
    );
  }

  /// `Manage your active login sessions`
  String get active_sessions_desc {
    return Intl.message(
      'Manage your active login sessions',
      name: 'active_sessions_desc',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get delete_account {
    return Intl.message(
      'Delete Account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Permanently delete your account`
  String get delete_account_desc {
    return Intl.message(
      'Permanently delete your account',
      name: 'delete_account_desc',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account? This action cannot be undone.`
  String get delete_account_confirm {
    return Intl.message(
      'Are you sure you want to delete your account? This action cannot be undone.',
      name: 'delete_account_confirm',
      desc: '',
      args: [],
    );
  }

  /// `You will be redirected to change your password.`
  String get change_password_redirect {
    return Intl.message(
      'You will be redirected to change your password.',
      name: 'change_password_redirect',
      desc: '',
      args: [],
    );
  }

  /// `Notifications Settings`
  String get notifications_settings {
    return Intl.message(
      'Notifications Settings',
      name: 'notifications_settings',
      desc: '',
      args: [],
    );
  }

  /// `Notification Methods`
  String get notification_methods {
    return Intl.message(
      'Notification Methods',
      name: 'notification_methods',
      desc: '',
      args: [],
    );
  }

  /// `Push Notifications`
  String get push_notifications {
    return Intl.message(
      'Push Notifications',
      name: 'push_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications on your device`
  String get push_notifications_desc {
    return Intl.message(
      'Receive notifications on your device',
      name: 'push_notifications_desc',
      desc: '',
      args: [],
    );
  }

  /// `Email Notifications`
  String get email_notifications {
    return Intl.message(
      'Email Notifications',
      name: 'email_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications via email`
  String get email_notifications_desc {
    return Intl.message(
      'Receive notifications via email',
      name: 'email_notifications_desc',
      desc: '',
      args: [],
    );
  }

  /// `SMS Notifications`
  String get sms_notifications {
    return Intl.message(
      'SMS Notifications',
      name: 'sms_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications via SMS`
  String get sms_notifications_desc {
    return Intl.message(
      'Receive notifications via SMS',
      name: 'sms_notifications_desc',
      desc: '',
      args: [],
    );
  }

  /// `Notification Types`
  String get notification_types {
    return Intl.message(
      'Notification Types',
      name: 'notification_types',
      desc: '',
      args: [],
    );
  }

  /// `Course Updates`
  String get course_updates {
    return Intl.message(
      'Course Updates',
      name: 'course_updates',
      desc: '',
      args: [],
    );
  }

  /// `New courses, updates, and announcements`
  String get course_updates_desc {
    return Intl.message(
      'New courses, updates, and announcements',
      name: 'course_updates_desc',
      desc: '',
      args: [],
    );
  }

  /// `Assignments`
  String get assignments {
    return Intl.message('Assignments', name: 'assignments', desc: '', args: []);
  }

  /// `Assignment deadlines and reminders`
  String get assignments_desc {
    return Intl.message(
      'Assignment deadlines and reminders',
      name: 'assignments_desc',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message('Messages', name: 'messages', desc: '', args: []);
  }

  /// `New messages from instructors and peers`
  String get messages_desc {
    return Intl.message(
      'New messages from instructors and peers',
      name: 'messages_desc',
      desc: '',
      args: [],
    );
  }

  /// `Reminders`
  String get reminders {
    return Intl.message('Reminders', name: 'reminders', desc: '', args: []);
  }

  /// `Study reminders and scheduled notifications`
  String get reminders_desc {
    return Intl.message(
      'Study reminders and scheduled notifications',
      name: 'reminders_desc',
      desc: '',
      args: [],
    );
  }

  /// `Promotions`
  String get promotions {
    return Intl.message('Promotions', name: 'promotions', desc: '', args: []);
  }

  /// `Special offers and discounts`
  String get promotions_desc {
    return Intl.message(
      'Special offers and discounts',
      name: 'promotions_desc',
      desc: '',
      args: [],
    );
  }

  /// `Quiet Hours`
  String get quiet_hours {
    return Intl.message('Quiet Hours', name: 'quiet_hours', desc: '', args: []);
  }

  /// `Enable Quiet Hours`
  String get enable_quiet_hours {
    return Intl.message(
      'Enable Quiet Hours',
      name: 'enable_quiet_hours',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from_label {
    return Intl.message('From', name: 'from_label', desc: '', args: []);
  }

  /// `To`
  String get to_label {
    return Intl.message('To', name: 'to_label', desc: '', args: []);
  }

  /// `Save Settings`
  String get save_settings {
    return Intl.message(
      'Save Settings',
      name: 'save_settings',
      desc: '',
      args: [],
    );
  }

  /// `Settings saved successfully!`
  String get settings_saved {
    return Intl.message(
      'Settings saved successfully!',
      name: 'settings_saved',
      desc: '',
      args: [],
    );
  }

  /// `No courses found`
  String get no_courses_found {
    return Intl.message(
      'No courses found',
      name: 'no_courses_found',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all_filter {
    return Intl.message('All', name: 'all_filter', desc: '', args: []);
  }

  /// `Paid`
  String get paid_filter {
    return Intl.message('Paid', name: 'paid_filter', desc: '', args: []);
  }

  /// `Free`
  String get free_filter {
    return Intl.message('Free', name: 'free_filter', desc: '', args: []);
  }

  /// `My Courses`
  String get my_courses {
    return Intl.message('My Courses', name: 'my_courses', desc: '', args: []);
  }

  /// `Enter friend's email address`
  String get invite_email_hint {
    return Intl.message(
      'Enter friend\'s email address',
      name: 'invite_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Add a note at current position...`
  String get add_note_position {
    return Intl.message(
      'Add a note at current position...',
      name: 'add_note_position',
      desc: '',
      args: [],
    );
  }

  /// `Ask me anything...`
  String get ask_me_anything {
    return Intl.message(
      'Ask me anything...',
      name: 'ask_me_anything',
      desc: '',
      args: [],
    );
  }

  /// `Update ready to install`
  String get update_ready {
    return Intl.message(
      'Update ready to install',
      name: 'update_ready',
      desc: '',
      args: [],
    );
  }

  /// `Login required`
  String get login_required {
    return Intl.message(
      'Login required',
      name: 'login_required',
      desc: '',
      args: [],
    );
  }

  /// `Invalid preferences data`
  String get invalid_preferences_data {
    return Intl.message(
      'Invalid preferences data',
      name: 'invalid_preferences_data',
      desc: '',
      args: [],
    );
  }

  /// `Invalid payment data`
  String get invalid_payment_data {
    return Intl.message(
      'Invalid payment data',
      name: 'invalid_payment_data',
      desc: '',
      args: [],
    );
  }

  /// `Image download feature coming soon!`
  String get image_download_coming_soon {
    return Intl.message(
      'Image download feature coming soon!',
      name: 'image_download_coming_soon',
      desc: '',
      args: [],
    );
  }

  /// `Image sharing feature coming soon!`
  String get image_share_coming_soon {
    return Intl.message(
      'Image sharing feature coming soon!',
      name: 'image_share_coming_soon',
      desc: '',
      args: [],
    );
  }

  /// `Study plan created successfully!`
  String get study_plan_created {
    return Intl.message(
      'Study plan created successfully!',
      name: 'study_plan_created',
      desc: '',
      args: [],
    );
  }

  /// `Loading your preferences...`
  String get loading_preferences {
    return Intl.message(
      'Loading your preferences...',
      name: 'loading_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Reset All Preferences`
  String get reset_all_preferences {
    return Intl.message(
      'Reset All Preferences',
      name: 'reset_all_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Edit Preferences`
  String get edit_preferences {
    return Intl.message(
      'Edit Preferences',
      name: 'edit_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Modify your current study preferences`
  String get modify_preferences_desc {
    return Intl.message(
      'Modify your current study preferences',
      name: 'modify_preferences_desc',
      desc: '',
      args: [],
    );
  }

  /// `Generate New Plan`
  String get generate_new_plan {
    return Intl.message(
      'Generate New Plan',
      name: 'generate_new_plan',
      desc: '',
      args: [],
    );
  }

  /// `Reset Everything`
  String get reset_everything {
    return Intl.message(
      'Reset Everything',
      name: 'reset_everything',
      desc: '',
      args: [],
    );
  }

  /// `Start over with fresh preferences`
  String get reset_everything_desc {
    return Intl.message(
      'Start over with fresh preferences',
      name: 'reset_everything_desc',
      desc: '',
      args: [],
    );
  }

  /// `Plan`
  String get plan_title {
    return Intl.message('Plan', name: 'plan_title', desc: '', args: []);
  }

  /// `My Plan`
  String get my_plan {
    return Intl.message('My Plan', name: 'my_plan', desc: '', args: []);
  }

  /// `Lessons`
  String get lessons {
    return Intl.message('Lessons', name: 'lessons', desc: '', args: []);
  }

  /// `Study plan updated successfully!`
  String get study_plan_updated {
    return Intl.message(
      'Study plan updated successfully!',
      name: 'study_plan_updated',
      desc: '',
      args: [],
    );
  }

  /// `Delete Event`
  String get delete_event {
    return Intl.message(
      'Delete Event',
      name: 'delete_event',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get credit_card {
    return Intl.message('Credit Card', name: 'credit_card', desc: '', args: []);
  }

  /// `Visa, MasterCard, American Express`
  String get credit_card_desc {
    return Intl.message(
      'Visa, MasterCard, American Express',
      name: 'credit_card_desc',
      desc: '',
      args: [],
    );
  }

  /// `PayPal`
  String get paypal {
    return Intl.message('PayPal', name: 'paypal', desc: '', args: []);
  }

  /// `Pay with your PayPal account`
  String get paypal_desc {
    return Intl.message(
      'Pay with your PayPal account',
      name: 'paypal_desc',
      desc: '',
      args: [],
    );
  }

  /// `Error completing onboarding`
  String get error_completing_onboarding {
    return Intl.message(
      'Error completing onboarding',
      name: 'error_completing_onboarding',
      desc: '',
      args: [],
    );
  }

  /// `🗑️ Message has been deleted`
  String get message_deleted {
    return Intl.message(
      '🗑️ Message has been deleted',
      name: 'message_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Subjects`
  String get subjects {
    return Intl.message('Subjects', name: 'subjects', desc: '', args: []);
  }

  /// `No subjects available`
  String get no_subjects_available {
    return Intl.message(
      'No subjects available',
      name: 'no_subjects_available',
      desc: '',
      args: [],
    );
  }

  /// `Check back soon!`
  String get check_back_soon {
    return Intl.message(
      'Check back soon!',
      name: 'check_back_soon',
      desc: '',
      args: [],
    );
  }

  /// `No courses yet`
  String get no_courses_yet {
    return Intl.message(
      'No courses yet',
      name: 'no_courses_yet',
      desc: '',
      args: [],
    );
  }

  /// `Start your learning journey today!`
  String get start_learning_journey {
    return Intl.message(
      'Start your learning journey today!',
      name: 'start_learning_journey',
      desc: '',
      args: [],
    );
  }

  /// `Browse Courses`
  String get browse_courses {
    return Intl.message(
      'Browse Courses',
      name: 'browse_courses',
      desc: '',
      args: [],
    );
  }

  /// `Popular Courses`
  String get popular_courses {
    return Intl.message(
      'Popular Courses',
      name: 'popular_courses',
      desc: '',
      args: [],
    );
  }

  /// `No popular courses available`
  String get no_popular_courses {
    return Intl.message(
      'No popular courses available',
      name: 'no_popular_courses',
      desc: '',
      args: [],
    );
  }

  /// `Check back soon for trending courses!`
  String get check_back_trending {
    return Intl.message(
      'Check back soon for trending courses!',
      name: 'check_back_trending',
      desc: '',
      args: [],
    );
  }

  /// `Explore All`
  String get explore_all {
    return Intl.message('Explore All', name: 'explore_all', desc: '', args: []);
  }

  /// `No mentors available`
  String get no_mentors_available {
    return Intl.message(
      'No mentors available',
      name: 'no_mentors_available',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_label {
    return Intl.message('Continue', name: 'continue_label', desc: '', args: []);
  }

  /// `{count} lessons left`
  String lessons_left(Object count) {
    return Intl.message(
      '$count lessons left',
      name: 'lessons_left',
      desc: '',
      args: [count],
    );
  }

  /// `Free`
  String get free_label {
    return Intl.message('Free', name: 'free_label', desc: '', args: []);
  }

  /// `Streaming Now`
  String get streaming_now {
    return Intl.message(
      'Streaming Now',
      name: 'streaming_now',
      desc: '',
      args: [],
    );
  }

  /// `Top Mentors`
  String get top_mentors {
    return Intl.message('Top Mentors', name: 'top_mentors', desc: '', args: []);
  }

  /// `Students`
  String get students_label {
    return Intl.message('Students', name: 'students_label', desc: '', args: []);
  }

  /// `Exp.`
  String get exp_label {
    return Intl.message('Exp.', name: 'exp_label', desc: '', args: []);
  }

  /// `AI Tools`
  String get ai_tools {
    return Intl.message('AI Tools', name: 'ai_tools', desc: '', args: []);
  }

  /// `Powered by AI`
  String get powered_by_ai {
    return Intl.message(
      'Powered by AI',
      name: 'powered_by_ai',
      desc: '',
      args: [],
    );
  }

  /// `AI Chat`
  String get ai_chat {
    return Intl.message('AI Chat', name: 'ai_chat', desc: '', args: []);
  }

  /// `Quiz Maker`
  String get quiz_maker {
    return Intl.message('Quiz Maker', name: 'quiz_maker', desc: '', args: []);
  }

  /// `Chat PDF`
  String get chat_pdf {
    return Intl.message('Chat PDF', name: 'chat_pdf', desc: '', args: []);
  }

  /// `Code Tutor`
  String get code_tutor {
    return Intl.message('Code Tutor', name: 'code_tutor', desc: '', args: []);
  }

  /// `Coming soon!`
  String get coming_soon {
    return Intl.message(
      'Coming soon!',
      name: 'coming_soon',
      desc: '',
      args: [],
    );
  }

  /// `NEW`
  String get new_label {
    return Intl.message('NEW', name: 'new_label', desc: '', args: []);
  }

  /// `Study Preferences`
  String get study_preferences {
    return Intl.message(
      'Study Preferences',
      name: 'study_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Preferences Already Set`
  String get preferences_already_set {
    return Intl.message(
      'Preferences Already Set',
      name: 'preferences_already_set',
      desc: '',
      args: [],
    );
  }

  /// `You have already configured your study preferences`
  String get preferences_already_set_desc {
    return Intl.message(
      'You have already configured your study preferences',
      name: 'preferences_already_set_desc',
      desc: '',
      args: [],
    );
  }

  /// `Create a new study plan with current preferences`
  String get create_new_plan_desc {
    return Intl.message(
      'Create a new study plan with current preferences',
      name: 'create_new_plan_desc',
      desc: '',
      args: [],
    );
  }

  /// `Generating Your Personalized Study Plan...`
  String get generating_plan_title {
    return Intl.message(
      'Generating Your Personalized Study Plan...',
      name: 'generating_plan_title',
      desc: '',
      args: [],
    );
  }

  /// `AI is analyzing your preferences and creating a customized study schedule`
  String get generating_plan_desc {
    return Intl.message(
      'AI is analyzing your preferences and creating a customized study schedule',
      name: 'generating_plan_desc',
      desc: '',
      args: [],
    );
  }

  /// `This will delete all your study preferences and generated lessons. You will need to set up your preferences again from scratch.`
  String get reset_preferences_confirm {
    return Intl.message(
      'This will delete all your study preferences and generated lessons. You will need to set up your preferences again from scratch.',
      name: 'reset_preferences_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `No Lessons Today`
  String get no_lessons_today {
    return Intl.message(
      'No Lessons Today',
      name: 'no_lessons_today',
      desc: '',
      args: [],
    );
  }

  /// `No Lessons on {day}`
  String no_lessons_on(Object day) {
    return Intl.message(
      'No Lessons on $day',
      name: 'no_lessons_on',
      desc: '',
      args: [day],
    );
  }

  /// `No Events Today`
  String get no_events_today {
    return Intl.message(
      'No Events Today',
      name: 'no_events_today',
      desc: '',
      args: [],
    );
  }

  /// `No Events on {day}`
  String no_events_on(Object day) {
    return Intl.message(
      'No Events on $day',
      name: 'no_events_on',
      desc: '',
      args: [day],
    );
  }

  /// `No Lessons Yet`
  String get no_lessons_yet {
    return Intl.message(
      'No Lessons Yet',
      name: 'no_lessons_yet',
      desc: '',
      args: [],
    );
  }

  /// `Lessons for this course will appear here.`
  String get lessons_appear_here {
    return Intl.message(
      'Lessons for this course will appear here.',
      name: 'lessons_appear_here',
      desc: '',
      args: [],
    );
  }

  /// `No Materials`
  String get no_materials {
    return Intl.message(
      'No Materials',
      name: 'no_materials',
      desc: '',
      args: [],
    );
  }

  /// `Resources attached to this lecture will appear here.`
  String get materials_appear_here {
    return Intl.message(
      'Resources attached to this lecture will appear here.',
      name: 'materials_appear_here',
      desc: '',
      args: [],
    );
  }

  /// `No Notes Added`
  String get no_notes_added {
    return Intl.message(
      'No Notes Added',
      name: 'no_notes_added',
      desc: '',
      args: [],
    );
  }

  /// `Your personal notes for this lecture will be saved here.`
  String get notes_appear_here {
    return Intl.message(
      'Your personal notes for this lecture will be saved here.',
      name: 'notes_appear_here',
      desc: '',
      args: [],
    );
  }

  /// `No Reviews Yet`
  String get no_reviews_yet {
    return Intl.message(
      'No Reviews Yet',
      name: 'no_reviews_yet',
      desc: '',
      args: [],
    );
  }

  /// `Be the first to leave a review for this lecture!`
  String get first_review {
    return Intl.message(
      'Be the first to leave a review for this lecture!',
      name: 'first_review',
      desc: '',
      args: [],
    );
  }

  /// `Course Content`
  String get course_content {
    return Intl.message(
      'Course Content',
      name: 'course_content',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load video`
  String get failed_to_load_video {
    return Intl.message(
      'Failed to load video',
      name: 'failed_to_load_video',
      desc: '',
      args: [],
    );
  }

  /// `No video available`
  String get no_video_available {
    return Intl.message(
      'No video available',
      name: 'no_video_available',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Quizzes`
  String get quizzes {
    return Intl.message('Quizzes', name: 'quizzes', desc: '', args: []);
  }

  /// `Materials`
  String get materials {
    return Intl.message('Materials', name: 'materials', desc: '', args: []);
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `Reviews`
  String get reviews {
    return Intl.message('Reviews', name: 'reviews', desc: '', args: []);
  }

  /// `Reading Material {index}`
  String reading_material(Object index) {
    return Intl.message(
      'Reading Material $index',
      name: 'reading_material',
      desc: '',
      args: [index],
    );
  }

  /// `PDF Document`
  String get pdf_document {
    return Intl.message(
      'PDF Document',
      name: 'pdf_document',
      desc: '',
      args: [],
    );
  }

  /// `Lecture {current} of {total}`
  String lecture_of(Object current, Object total) {
    return Intl.message(
      'Lecture $current of $total',
      name: 'lecture_of',
      desc: '',
      args: [current, total],
    );
  }

  /// `No Notifications`
  String get no_notifications {
    return Intl.message(
      'No Notifications',
      name: 'no_notifications',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any notifications yet`
  String get no_notifications_yet {
    return Intl.message(
      'You don\'t have any notifications yet',
      name: 'no_notifications_yet',
      desc: '',
      args: [],
    );
  }

  /// `No Unread Notifications`
  String get no_unread_notifications {
    return Intl.message(
      'No Unread Notifications',
      name: 'no_unread_notifications',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get eg_currency {
    return Intl.message('EGP', name: 'eg_currency', desc: '', args: []);
  }

  /// `Generating quiz...`
  String get generating_quiz {
    return Intl.message(
      'Generating quiz...',
      name: 'generating_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Submit Answers`
  String get submit_answers {
    return Intl.message(
      'Submit Answers',
      name: 'submit_answers',
      desc: '',
      args: [],
    );
  }

  /// `Your Score`
  String get your_score {
    return Intl.message('Your Score', name: 'your_score', desc: '', args: []);
  }

  /// `Question {current} of {total}`
  String question_of(int current, int total) {
    return Intl.message(
      'Question $current of $total',
      name: 'question_of',
      desc: '',
      args: [current, total],
    );
  }

  /// `AI service is temporarily unavailable. Please try again.`
  String get ai_service_error {
    return Intl.message(
      'AI service is temporarily unavailable. Please try again.',
      name: 'ai_service_error',
      desc: '',
      args: [],
    );
  }

  /// `Subject name`
  String get quiz_setup_subject {
    return Intl.message(
      'Subject name',
      name: 'quiz_setup_subject',
      desc: '',
      args: [],
    );
  }

  /// `Number of questions`
  String get quiz_setup_num_questions {
    return Intl.message(
      'Number of questions',
      name: 'quiz_setup_num_questions',
      desc: '',
      args: [],
    );
  }

  /// `Question type`
  String get quiz_setup_question_type {
    return Intl.message(
      'Question type',
      name: 'quiz_setup_question_type',
      desc: '',
      args: [],
    );
  }

  /// `Generate Quiz`
  String get generate_quiz {
    return Intl.message(
      'Generate Quiz',
      name: 'generate_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Ask a math or physics question...`
  String get ask_math_question {
    return Intl.message(
      'Ask a math or physics question...',
      name: 'ask_math_question',
      desc: '',
      args: [],
    );
  }

  /// `Uploading PDF...`
  String get uploading_pdf {
    return Intl.message(
      'Uploading PDF...',
      name: 'uploading_pdf',
      desc: '',
      args: [],
    );
  }

  /// `Only PDF files are allowed`
  String get pdf_only_allowed {
    return Intl.message(
      'Only PDF files are allowed',
      name: 'pdf_only_allowed',
      desc: '',
      args: [],
    );
  }

  /// `Extracting video content...`
  String get extracting_video {
    return Intl.message(
      'Extracting video content...',
      name: 'extracting_video',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid YouTube URL.`
  String get invalid_youtube_url {
    return Intl.message(
      'Please enter a valid YouTube URL.',
      name: 'invalid_youtube_url',
      desc: '',
      args: [],
    );
  }

  /// `Video Quiz`
  String get video_quiz {
    return Intl.message('Video Quiz', name: 'video_quiz', desc: '', args: []);
  }

  /// `Voice Quiz`
  String get voice_quiz {
    return Intl.message('Voice Quiz', name: 'voice_quiz', desc: '', args: []);
  }

  /// `Upload Audio & Generate Quiz`
  String get processing_audio {
    return Intl.message(
      'Upload Audio & Generate Quiz',
      name: 'processing_audio',
      desc: '',
      args: [],
    );
  }

  /// `Quiz`
  String get quiz {
    return Intl.message('Quiz', name: 'quiz', desc: '', args: []);
  }

  /// `Create Quiz`
  String get quizCreate {
    return Intl.message('Create Quiz', name: 'quizCreate', desc: '', args: []);
  }

  /// `Quiz Title`
  String get quizTitle {
    return Intl.message('Quiz Title', name: 'quizTitle', desc: '', args: []);
  }

  /// `Description`
  String get quizDescription {
    return Intl.message(
      'Description',
      name: 'quizDescription',
      desc: '',
      args: [],
    );
  }

  /// `Time Limit (minutes)`
  String get quizTimeLimit {
    return Intl.message(
      'Time Limit (minutes)',
      name: 'quizTimeLimit',
      desc: '',
      args: [],
    );
  }

  /// `Passing Score (%)`
  String get quizPassingScore {
    return Intl.message(
      'Passing Score (%)',
      name: 'quizPassingScore',
      desc: '',
      args: [],
    );
  }

  /// `Availability Window`
  String get quizAvailabilityWindow {
    return Intl.message(
      'Availability Window',
      name: 'quizAvailabilityWindow',
      desc: '',
      args: [],
    );
  }

  /// `Allow Retakes`
  String get quizAllowRetakes {
    return Intl.message(
      'Allow Retakes',
      name: 'quizAllowRetakes',
      desc: '',
      args: [],
    );
  }

  /// `Show Answers After Submission`
  String get quizShowAnswers {
    return Intl.message(
      'Show Answers After Submission',
      name: 'quizShowAnswers',
      desc: '',
      args: [],
    );
  }

  /// `Multiple Choice`
  String get quizQuestionTypeMcq {
    return Intl.message(
      'Multiple Choice',
      name: 'quizQuestionTypeMcq',
      desc: '',
      args: [],
    );
  }

  /// `True/False`
  String get quizQuestionTypeTrueFalse {
    return Intl.message(
      'True/False',
      name: 'quizQuestionTypeTrueFalse',
      desc: '',
      args: [],
    );
  }

  /// `Short Answer`
  String get quizQuestionTypeShortAnswer {
    return Intl.message(
      'Short Answer',
      name: 'quizQuestionTypeShortAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Generate from PDF`
  String get quizGenerateFromPdf {
    return Intl.message(
      'Generate from PDF',
      name: 'quizGenerateFromPdf',
      desc: '',
      args: [],
    );
  }

  /// `Generate from Video`
  String get quizGenerateFromVideo {
    return Intl.message(
      'Generate from Video',
      name: 'quizGenerateFromVideo',
      desc: '',
      args: [],
    );
  }

  /// `Generate from Voice`
  String get quizGenerateFromVoice {
    return Intl.message(
      'Generate from Voice',
      name: 'quizGenerateFromVoice',
      desc: '',
      args: [],
    );
  }

  /// `Publish`
  String get quizPublish {
    return Intl.message('Publish', name: 'quizPublish', desc: '', args: []);
  }

  /// `Unpublish`
  String get quizUnpublish {
    return Intl.message('Unpublish', name: 'quizUnpublish', desc: '', args: []);
  }

  /// `Are you sure you want to delete this quiz?`
  String get quizDeleteConfirm {
    return Intl.message(
      'Are you sure you want to delete this quiz?',
      name: 'quizDeleteConfirm',
      desc: '',
      args: [],
    );
  }

  /// `This quiz has submissions. Are you sure you want to delete it?`
  String get quizDeleteWithSubmissionsConfirm {
    return Intl.message(
      'This quiz has submissions. Are you sure you want to delete it?',
      name: 'quizDeleteWithSubmissionsConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Start Quiz`
  String get quizStartAttempt {
    return Intl.message(
      'Start Quiz',
      name: 'quizStartAttempt',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get quizSubmit {
    return Intl.message('Submit', name: 'quizSubmit', desc: '', args: []);
  }

  /// `Auto-submitted (time expired)`
  String get quizAutoSubmitted {
    return Intl.message(
      'Auto-submitted (time expired)',
      name: 'quizAutoSubmitted',
      desc: '',
      args: [],
    );
  }

  /// `You already have an attempt in progress`
  String get quizAlreadyInProgress {
    return Intl.message(
      'You already have an attempt in progress',
      name: 'quizAlreadyInProgress',
      desc: '',
      args: [],
    );
  }

  /// `This quiz is no longer available`
  String get quizWindowClosed {
    return Intl.message(
      'This quiz is no longer available',
      name: 'quizWindowClosed',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get quizScoreLabel {
    return Intl.message('Score', name: 'quizScoreLabel', desc: '', args: []);
  }

  /// `Passed`
  String get quizPassed {
    return Intl.message('Passed', name: 'quizPassed', desc: '', args: []);
  }

  /// `Failed`
  String get quizFailed {
    return Intl.message('Failed', name: 'quizFailed', desc: '', args: []);
  }

  /// `Override Grade`
  String get quizResultOverride {
    return Intl.message(
      'Override Grade',
      name: 'quizResultOverride',
      desc: '',
      args: [],
    );
  }

  /// `No messages yet. Start the conversation!`
  String get classroomEmpty {
    return Intl.message(
      'No messages yet. Start the conversation!',
      name: 'classroomEmpty',
      desc: '',
      args: [],
    );
  }

  /// `You have been removed from this classroom`
  String get classroomRemoved {
    return Intl.message(
      'You have been removed from this classroom',
      name: 'classroomRemoved',
      desc: '',
      args: [],
    );
  }

  /// `This classroom is currently closed`
  String get classroomClosed {
    return Intl.message(
      'This classroom is currently closed',
      name: 'classroomClosed',
      desc: '',
      args: [],
    );
  }

  /// `Pinned Message`
  String get classroomPinned {
    return Intl.message(
      'Pinned Message',
      name: 'classroomPinned',
      desc: '',
      args: [],
    );
  }

  /// `File size must be less than 25 MB`
  String get classroomFileTooLarge {
    return Intl.message(
      'File size must be less than 25 MB',
      name: 'classroomFileTooLarge',
      desc: '',
      args: [],
    );
  }

  /// `This file type is not allowed`
  String get classroomUnsupportedFileType {
    return Intl.message(
      'This file type is not allowed',
      name: 'classroomUnsupportedFileType',
      desc: '',
      args: [],
    );
  }

  /// `You are offline. Message will be sent when connected`
  String get classroomOffline {
    return Intl.message(
      'You are offline. Message will be sent when connected',
      name: 'classroomOffline',
      desc: '',
      args: [],
    );
  }

  /// `is typing...`
  String get classroomTyping {
    return Intl.message(
      'is typing...',
      name: 'classroomTyping',
      desc: '',
      args: [],
    );
  }

  /// `Reply`
  String get classroomReply {
    return Intl.message('Reply', name: 'classroomReply', desc: '', args: []);
  }

  /// `Recording... Slide up to cancel`
  String get classroomRecording {
    return Intl.message(
      'Recording... Slide up to cancel',
      name: 'classroomRecording',
      desc: '',
      args: [],
    );
  }

  /// `{courseTitle} — by {teacherName}\n\n{shareUrl}`
  String shareCourseMessage(
    String courseTitle,
    String teacherName,
    String shareUrl,
  ) {
    return Intl.message(
      '$courseTitle — by $teacherName\n\n$shareUrl',
      name: 'shareCourseMessage',
      desc: '',
      args: [courseTitle, teacherName, shareUrl],
    );
  }

  /// `Share Course`
  String get shareCourseAction {
    return Intl.message(
      'Share Course',
      name: 'shareCourseAction',
      desc: '',
      args: [],
    );
  }

  /// `This course is no longer available`
  String get courseUnavailable {
    return Intl.message(
      'This course is no longer available',
      name: 'courseUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Browse Courses`
  String get browseCourses {
    return Intl.message(
      'Browse Courses',
      name: 'browseCourses',
      desc: '',
      args: [],
    );
  }

  /// `Questions cannot be changed after first submission`
  String get error_quiz_questionsLockedAfterFirstSubmission {
    return Intl.message(
      'Questions cannot be changed after first submission',
      name: 'error_quiz_questionsLockedAfterFirstSubmission',
      desc: '',
      args: [],
    );
  }

  /// `This quiz has submissions and cannot be deleted`
  String get error_quiz_hasSubmissions {
    return Intl.message(
      'This quiz has submissions and cannot be deleted',
      name: 'error_quiz_hasSubmissions',
      desc: '',
      args: [],
    );
  }

  /// `You must be enrolled to take this quiz`
  String get error_quiz_enrollmentRequired {
    return Intl.message(
      'You must be enrolled to take this quiz',
      name: 'error_quiz_enrollmentRequired',
      desc: '',
      args: [],
    );
  }

  /// `This quiz is not available`
  String get error_quiz_quizNotAvailable {
    return Intl.message(
      'This quiz is not available',
      name: 'error_quiz_quizNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `You already have an attempt in progress`
  String get error_quiz_alreadyInProgress {
    return Intl.message(
      'You already have an attempt in progress',
      name: 'error_quiz_alreadyInProgress',
      desc: '',
      args: [],
    );
  }

  /// `No more attempts allowed`
  String get error_quiz_attemptsExhausted {
    return Intl.message(
      'No more attempts allowed',
      name: 'error_quiz_attemptsExhausted',
      desc: '',
      args: [],
    );
  }

  /// `This quiz attempt window has closed`
  String get error_quiz_attemptWindowClosed {
    return Intl.message(
      'This quiz attempt window has closed',
      name: 'error_quiz_attemptWindowClosed',
      desc: '',
      args: [],
    );
  }

  /// `Your quiz attempt has expired`
  String get error_quiz_attemptExpired {
    return Intl.message(
      'Your quiz attempt has expired',
      name: 'error_quiz_attemptExpired',
      desc: '',
      args: [],
    );
  }

  /// `This quiz has already been submitted`
  String get error_quiz_alreadySubmitted {
    return Intl.message(
      'This quiz has already been submitted',
      name: 'error_quiz_alreadySubmitted',
      desc: '',
      args: [],
    );
  }

  /// `Access Denied`
  String get error_unauthorized {
    return Intl.message(
      'Access Denied',
      name: 'error_unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Update Available`
  String get update_title {
    return Intl.message(
      'Update Available',
      name: 'update_title',
      desc: '',
      args: [],
    );
  }

  /// `A new version of EOL is available. Update now for the latest features.`
  String get update_body {
    return Intl.message(
      'A new version of EOL is available. Update now for the latest features.',
      name: 'update_body',
      desc: '',
      args: [],
    );
  }

  /// `Update Now`
  String get update_button {
    return Intl.message(
      'Update Now',
      name: 'update_button',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get update_later {
    return Intl.message('Later', name: 'update_later', desc: '', args: []);
  }

  /// `Update Required`
  String get force_update_title {
    return Intl.message(
      'Update Required',
      name: 'force_update_title',
      desc: '',
      args: [],
    );
  }

  /// `This version of EOL is no longer supported. Please update to continue.`
  String get force_update_body {
    return Intl.message(
      'This version of EOL is no longer supported. Please update to continue.',
      name: 'force_update_body',
      desc: '',
      args: [],
    );
  }

  /// `Update to Continue`
  String get force_update_button {
    return Intl.message(
      'Update to Continue',
      name: 'force_update_button',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your identity to access EOL`
  String get biometric_reason {
    return Intl.message(
      'Confirm your identity to access EOL',
      name: 'biometric_reason',
      desc: '',
      args: [],
    );
  }

  /// `Too many failed attempts. Please log in again.`
  String get biometric_locked_out {
    return Intl.message(
      'Too many failed attempts. Please log in again.',
      name: 'biometric_locked_out',
      desc: '',
      args: [],
    );
  }

  /// `Login with Biometrics`
  String get biometric_login_button {
    return Intl.message(
      'Login with Biometrics',
      name: 'biometric_login_button',
      desc: '',
      args: [],
    );
  }

  /// `Biometric authentication failed. Please try again.`
  String get biometric_failed {
    return Intl.message(
      'Biometric authentication failed. Please try again.',
      name: 'biometric_failed',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your identity to cancel subscription`
  String get biometric_reason_cancel_subscription {
    return Intl.message(
      'Confirm your identity to cancel subscription',
      name: 'biometric_reason_cancel_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your identity to delete your account`
  String get biometric_reason_delete_account {
    return Intl.message(
      'Confirm your identity to delete your account',
      name: 'biometric_reason_delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your identity to log in`
  String get biometric_reason_login {
    return Intl.message(
      'Confirm your identity to log in',
      name: 'biometric_reason_login',
      desc: '',
      args: [],
    );
  }

  /// `Showing cached data`
  String get stale_cache_message {
    return Intl.message(
      'Showing cached data',
      name: 'stale_cache_message',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get stale_cache_retry {
    return Intl.message(
      'Refresh',
      name: 'stale_cache_retry',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get error_no_internet {
    return Intl.message(
      'No Internet Connection',
      name: 'error_no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again`
  String get error_no_internet_subtitle {
    return Intl.message(
      'Please check your internet connection and try again',
      name: 'error_no_internet_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. We're working to fix it`
  String get error_server_subtitle {
    return Intl.message(
      'Something went wrong. We\'re working to fix it',
      name: 'error_server_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Request Timeout`
  String get error_timeout {
    return Intl.message(
      'Request Timeout',
      name: 'error_timeout',
      desc: '',
      args: [],
    );
  }

  /// `The request took too long. Please try again`
  String get error_timeout_subtitle {
    return Intl.message(
      'The request took too long. Please try again',
      name: 'error_timeout_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Something Went Wrong`
  String get error_generic {
    return Intl.message(
      'Something Went Wrong',
      name: 'error_generic',
      desc: '',
      args: [],
    );
  }

  /// `We encountered an unexpected error. Please try again`
  String get error_generic_subtitle {
    return Intl.message(
      'We encountered an unexpected error. Please try again',
      name: 'error_generic_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get error_go_back {
    return Intl.message('Go Back', name: 'error_go_back', desc: '', args: []);
  }

  /// `Answers saved. Will submit when reconnected`
  String get quiz_offline_pending {
    return Intl.message(
      'Answers saved. Will submit when reconnected',
      name: 'quiz_offline_pending',
      desc: '',
      args: [],
    );
  }

  /// `No Notifications Yet`
  String get empty_notifications {
    return Intl.message(
      'No Notifications Yet',
      name: 'empty_notifications',
      desc: '',
      args: [],
    );
  }

  /// `No Courses Yet`
  String get empty_courses {
    return Intl.message(
      'No Courses Yet',
      name: 'empty_courses',
      desc: '',
      args: [],
    );
  }

  /// `No Questions Yet`
  String get empty_community {
    return Intl.message(
      'No Questions Yet',
      name: 'empty_community',
      desc: '',
      args: [],
    );
  }

  /// `No Notes Yet`
  String get empty_notes {
    return Intl.message(
      'No Notes Yet',
      name: 'empty_notes',
      desc: '',
      args: [],
    );
  }

  /// `Nothing Here Yet`
  String get empty_generic {
    return Intl.message(
      'Nothing Here Yet',
      name: 'empty_generic',
      desc: '',
      args: [],
    );
  }

  /// `Best Learn`
  String get onboarding_best_learn_title {
    return Intl.message(
      'Best Learn',
      name: 'onboarding_best_learn_title',
      desc: '',
      args: [],
    );
  }

  /// `Discover the most effective way to learn with our innovative platform designed for modern learners.`
  String get onboarding_best_learn_subtitle {
    return Intl.message(
      'Discover the most effective way to learn with our innovative platform designed for modern learners.',
      name: 'onboarding_best_learn_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `AI Powered`
  String get onboarding_ai_powered_title {
    return Intl.message(
      'AI Powered',
      name: 'onboarding_ai_powered_title',
      desc: '',
      args: [],
    );
  }

  /// `Personalized learning paths and instant doubt resolution powered by advanced AI technology.`
  String get onboarding_ai_powered_subtitle {
    return Intl.message(
      'Personalized learning paths and instant doubt resolution powered by advanced AI technology.',
      name: 'onboarding_ai_powered_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Track Progress`
  String get onboarding_track_progress_title {
    return Intl.message(
      'Track Progress',
      name: 'onboarding_track_progress_title',
      desc: '',
      args: [],
    );
  }

  /// `Monitor your learning journey with detailed analytics and progress tracking.`
  String get onboarding_track_progress_subtitle {
    return Intl.message(
      'Monitor your learning journey with detailed analytics and progress tracking.',
      name: 'onboarding_track_progress_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboarding_get_started {
    return Intl.message(
      'Get Started',
      name: 'onboarding_get_started',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onboarding_skip {
    return Intl.message('Skip', name: 'onboarding_skip', desc: '', args: []);
  }

  /// `Share with Community`
  String get onboarding_share_with_community_title {
    return Intl.message(
      'Share with Community',
      name: 'onboarding_share_with_community_title',
      desc: '',
      args: [],
    );
  }

  /// `Connect with fellow learners, share your progress, and grow together in our supportive community.`
  String get onboarding_share_with_community_subtitle {
    return Intl.message(
      'Connect with fellow learners, share your progress, and grow together in our supportive community.',
      name: 'onboarding_share_with_community_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `AI Assistant 24/7`
  String get onboarding_ai_assistant_title {
    return Intl.message(
      'AI Assistant 24/7',
      name: 'onboarding_ai_assistant_title',
      desc: '',
      args: [],
    );
  }

  /// `Get instant help and personalized guidance from our intelligent AI assistant, available whenever you need it.`
  String get onboarding_ai_assistant_subtitle {
    return Intl.message(
      'Get instant help and personalized guidance from our intelligent AI assistant, available whenever you need it.',
      name: 'onboarding_ai_assistant_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get stat_all_courses {
    return Intl.message('All', name: 'stat_all_courses', desc: '', args: []);
  }

  /// `In Progress`
  String get stat_in_progress {
    return Intl.message(
      'In Progress',
      name: 'stat_in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get stat_completed {
    return Intl.message(
      'Completed',
      name: 'stat_completed',
      desc: '',
      args: [],
    );
  }

  /// `Search your courses...`
  String get search_courses_hint {
    return Intl.message(
      'Search your courses...',
      name: 'search_courses_hint',
      desc: '',
      args: [],
    );
  }

  /// `No Courses Yet`
  String get empty_my_courses_title {
    return Intl.message(
      'No Courses Yet',
      name: 'empty_my_courses_title',
      desc: '',
      args: [],
    );
  }

  /// `Start learning by enrolling in a course`
  String get empty_my_courses_subtitle {
    return Intl.message(
      'Start learning by enrolling in a course',
      name: 'empty_my_courses_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose a question to view details`
  String get choose_question_detail {
    return Intl.message(
      'Choose a question to view details',
      name: 'choose_question_detail',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get go_back {
    return Intl.message('Go Back', name: 'go_back', desc: '', args: []);
  }

  /// `Continue Learning`
  String get continue_learning {
    return Intl.message(
      'Continue Learning',
      name: 'continue_learning',
      desc: '',
      args: [],
    );
  }

  /// `Enroll Now`
  String get enroll_now {
    return Intl.message('Enroll Now', name: 'enroll_now', desc: '', args: []);
  }

  /// `Course Enrollment`
  String get course_enrollment {
    return Intl.message(
      'Course Enrollment',
      name: 'course_enrollment',
      desc: '',
      args: [],
    );
  }

  /// `Login successful`
  String get login_success {
    return Intl.message(
      'Login successful',
      name: 'login_success',
      desc: '',
      args: [],
    );
  }

  /// `Complete Your Profile`
  String get teacher_onboarding_title {
    return Intl.message(
      'Complete Your Profile',
      name: 'teacher_onboarding_title',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get teacher_onboarding_step_profile {
    return Intl.message(
      'Profile',
      name: 'teacher_onboarding_step_profile',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get teacher_onboarding_step_documents {
    return Intl.message(
      'Documents',
      name: 'teacher_onboarding_step_documents',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get teacher_onboarding_step_verification {
    return Intl.message(
      'Verification',
      name: 'teacher_onboarding_step_verification',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get teacher_profile_full_name {
    return Intl.message(
      'Full Name',
      name: 'teacher_profile_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get teacher_profile_gender {
    return Intl.message(
      'Gender',
      name: 'teacher_profile_gender',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get teacher_profile_date_of_birth {
    return Intl.message(
      'Date of Birth',
      name: 'teacher_profile_date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Bio`
  String get teacher_profile_bio {
    return Intl.message('Bio', name: 'teacher_profile_bio', desc: '', args: []);
  }

  /// `Bio must be at least 10 characters`
  String get teacher_profile_bio_error_short {
    return Intl.message(
      'Bio must be at least 10 characters',
      name: 'teacher_profile_bio_error_short',
      desc: '',
      args: [],
    );
  }

  /// `Bio cannot exceed 200 characters`
  String get teacher_profile_bio_error_long {
    return Intl.message(
      'Bio cannot exceed 200 characters',
      name: 'teacher_profile_bio_error_long',
      desc: '',
      args: [],
    );
  }

  /// `Specialization`
  String get teacher_profile_specialization {
    return Intl.message(
      'Specialization',
      name: 'teacher_profile_specialization',
      desc: '',
      args: [],
    );
  }

  /// `Years of Experience`
  String get teacher_profile_years_experience {
    return Intl.message(
      'Years of Experience',
      name: 'teacher_profile_years_experience',
      desc: '',
      args: [],
    );
  }

  /// `Teaching Subject`
  String get teacher_profile_subject {
    return Intl.message(
      'Teaching Subject',
      name: 'teacher_profile_subject',
      desc: '',
      args: [],
    );
  }

  /// `Teaching Level`
  String get teacher_profile_teaching_level {
    return Intl.message(
      'Teaching Level',
      name: 'teacher_profile_teaching_level',
      desc: '',
      args: [],
    );
  }

  /// `You must be at least 23 years old`
  String get teacher_profile_dob_error_age {
    return Intl.message(
      'You must be at least 23 years old',
      name: 'teacher_profile_dob_error_age',
      desc: '',
      args: [],
    );
  }

  /// `Profile saved successfully`
  String get teacher_profile_saved {
    return Intl.message(
      'Profile saved successfully',
      name: 'teacher_profile_saved',
      desc: '',
      args: [],
    );
  }

  /// `Not available`
  String get teacher_profile_not_available {
    return Intl.message(
      'Not available',
      name: 'teacher_profile_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Fill the form to preview your profile`
  String get teacher_profile_fill_to_preview {
    return Intl.message(
      'Fill the form to preview your profile',
      name: 'teacher_profile_fill_to_preview',
      desc: '',
      args: [],
    );
  }

  /// `Teacher Profile`
  String get teacher_public_profile_title {
    return Intl.message(
      'Teacher Profile',
      name: 'teacher_public_profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get teacher_public_profile_details {
    return Intl.message(
      'Details',
      name: 'teacher_public_profile_details',
      desc: '',
      args: [],
    );
  }

  /// `students`
  String get teacher_public_profile_students {
    return Intl.message(
      'students',
      name: 'teacher_public_profile_students',
      desc: '',
      args: [],
    );
  }

  /// `Documents View - Coming Soon`
  String get teacher_documents_view_placeholder {
    return Intl.message(
      'Documents View - Coming Soon',
      name: 'teacher_documents_view_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Verification View - Coming Soon`
  String get teacher_verification_view_placeholder {
    return Intl.message(
      'Verification View - Coming Soon',
      name: 'teacher_verification_view_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Tap to upload`
  String get teacher_doc_upload_hint {
    return Intl.message(
      'Tap to upload',
      name: 'teacher_doc_upload_hint',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get teacher_doc_upload_retry {
    return Intl.message(
      'Retry',
      name: 'teacher_doc_upload_retry',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this document?`
  String get teacher_doc_delete_confirm {
    return Intl.message(
      'Are you sure you want to delete this document?',
      name: 'teacher_doc_delete_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Re-uploading documents will reset your verification status to pending.`
  String get teacher_doc_reupload_approved_warning {
    return Intl.message(
      'Re-uploading documents will reset your verification status to pending.',
      name: 'teacher_doc_reupload_approved_warning',
      desc: '',
      args: [],
    );
  }

  /// `Verification submitted successfully`
  String get teacher_verification_submitted {
    return Intl.message(
      'Verification submitted successfully',
      name: 'teacher_verification_submitted',
      desc: '',
      args: [],
    );
  }

  /// `Verification rejected: {reason}`
  String teacher_verification_rejected_reason(Object reason) {
    return Intl.message(
      'Verification rejected: $reason',
      name: 'teacher_verification_rejected_reason',
      desc: '',
      args: [reason],
    );
  }

  /// `Your verification is pending review`
  String get teacher_verification_pending {
    return Intl.message(
      'Your verification is pending review',
      name: 'teacher_verification_pending',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been verified`
  String get teacher_verification_approved {
    return Intl.message(
      'Your account has been verified',
      name: 'teacher_verification_approved',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get select_date {
    return Intl.message('Select Date', name: 'select_date', desc: '', args: []);
  }

  /// `Male`
  String get gender_male {
    return Intl.message('Male', name: 'gender_male', desc: '', args: []);
  }

  /// `Female`
  String get gender_female {
    return Intl.message('Female', name: 'gender_female', desc: '', args: []);
  }

  /// `ID (Front)`
  String get teacher_doc_type_id_front {
    return Intl.message(
      'ID (Front)',
      name: 'teacher_doc_type_id_front',
      desc: '',
      args: [],
    );
  }

  /// `ID (Back)`
  String get teacher_doc_type_id_back {
    return Intl.message(
      'ID (Back)',
      name: 'teacher_doc_type_id_back',
      desc: '',
      args: [],
    );
  }

  /// `Degree Certificate`
  String get teacher_doc_type_degree {
    return Intl.message(
      'Degree Certificate',
      name: 'teacher_doc_type_degree',
      desc: '',
      args: [],
    );
  }

  /// `Teaching Certificate`
  String get teacher_doc_type_teaching {
    return Intl.message(
      'Teaching Certificate',
      name: 'teacher_doc_type_teaching',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message('Warning', name: 'warning', desc: '', args: []);
  }

  /// `Verification Documents`
  String get teacher_documents_title {
    return Intl.message(
      'Verification Documents',
      name: 'teacher_documents_title',
      desc: '',
      args: [],
    );
  }

  /// `Upload the required documents to verify your account`
  String get teacher_documents_subtitle {
    return Intl.message(
      'Upload the required documents to verify your account',
      name: 'teacher_documents_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Submit for Verification`
  String get teacher_verification_submit {
    return Intl.message(
      'Submit for Verification',
      name: 'teacher_verification_submit',
      desc: '',
      args: [],
    );
  }

  /// `Verification Rejected`
  String get teacher_verification_rejected {
    return Intl.message(
      'Verification Rejected',
      name: 'teacher_verification_rejected',
      desc: '',
      args: [],
    );
  }

  /// `Not Verified`
  String get teacher_verification_not_verified {
    return Intl.message(
      'Not Verified',
      name: 'teacher_verification_not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Status Unavailable`
  String get teacher_verification_status_unavailable {
    return Intl.message(
      'Status Unavailable',
      name: 'teacher_verification_status_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Complete Your Verification`
  String get teacher_verification_unverified_title {
    return Intl.message(
      'Complete Your Verification',
      name: 'teacher_verification_unverified_title',
      desc: '',
      args: [],
    );
  }

  /// `Fill in your profile, upload the required documents, then submit for verification to start publishing courses.`
  String get teacher_verification_unverified_subtitle {
    return Intl.message(
      'Fill in your profile, upload the required documents, then submit for verification to start publishing courses.',
      name: 'teacher_verification_unverified_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Complete profile and upload all required documents to submit.`
  String get teacher_verification_complete_profile_first {
    return Intl.message(
      'Complete profile and upload all required documents to submit.',
      name: 'teacher_verification_complete_profile_first',
      desc: '',
      args: [],
    );
  }

  /// `Your account is verified. You can now publish courses.`
  String get teacher_verification_approved_subtitle {
    return Intl.message(
      'Your account is verified. You can now publish courses.',
      name: 'teacher_verification_approved_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `We'll notify you when your account is reviewed.`
  String get teacher_verification_pending_subtitle {
    return Intl.message(
      'We\'ll notify you when your account is reviewed.',
      name: 'teacher_verification_pending_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Tell students about yourself (10–200 characters)`
  String get teacher_profile_bio_hint {
    return Intl.message(
      'Tell students about yourself (10–200 characters)',
      name: 'teacher_profile_bio_hint',
      desc: '',
      args: [],
    );
  }

  /// `Uploaded`
  String get teacher_doc_upload_success {
    return Intl.message(
      'Uploaded',
      name: 'teacher_doc_upload_success',
      desc: '',
      args: [],
    );
  }

  /// `Re-submit for Verification`
  String get teacher_verification_resubmit {
    return Intl.message(
      'Re-submit for Verification',
      name: 'teacher_verification_resubmit',
      desc: '',
      args: [],
    );
  }

  /// `Not yet verified`
  String get teacher_profile_not_verified {
    return Intl.message(
      'Not yet verified',
      name: 'teacher_profile_not_verified',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
