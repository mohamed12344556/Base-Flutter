import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const AuthResponse._();

  const factory AuthResponse({
    bool? success,
    String? message,
    AuthData? data,
    List<String>? errors,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  bool get isSuccess => success == true;
  bool get hasData => data != null;
  bool get hasErrors => errors != null && errors!.isNotEmpty;
}

@freezed
abstract class AuthData with _$AuthData {
  const factory AuthData({
    String? accessToken,
    String? refreshToken,
    String? expiresAt,
    UserData? user,
    String? verificationToken,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    String? id,
    String? email,
    String? name,
    String? nickname,
    int? gender,
    String? phoneNumber,
    String? dateOfBirth,
    int? xp,
    String? role,
    String? profileImageUrl,
    bool? isActive,
    bool? emailConfirmed,
    bool? phoneNumberConfirmed,
    bool? twoFactorEnabled,
    int? subscriptionPlanId,
    int? academicStageId,
    int? academicYearId,
    int? academicSectionId,
    AcademicStage? academicStage,
    AcademicYear? academicYear,
    AcademicSection? academicSection,
    SubscriptionPlan? subscriptionPlan,
    List<String>? roles,
    String? createdAt,
    String? language,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
abstract class AcademicStage with _$AcademicStage {
  const factory AcademicStage({
    int? id,
    String? stageName,
    String? stageNameInAr,
    String? name,
    String? nameInAr,
  }) = _AcademicStage;

  factory AcademicStage.fromJson(Map<String, dynamic> json) =>
      _$AcademicStageFromJson(json);
}

@freezed
abstract class AcademicYear with _$AcademicYear {
  const factory AcademicYear({
    int? id,
    String? yearName,
    String? yearNameInAr,
    int? academicStageId,
    AcademicStage? academicStage,
    String? name,
    String? nameInAr,
  }) = _AcademicYear;

  factory AcademicYear.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearFromJson(json);
}

@freezed
abstract class AcademicSection with _$AcademicSection {
  const factory AcademicSection({
    int? id,
    String? sectionName,
    String? sectionNameInAr,
    String? name,
    String? nameInAr,
  }) = _AcademicSection;

  factory AcademicSection.fromJson(Map<String, dynamic> json) =>
      _$AcademicSectionFromJson(json);
}

@freezed
abstract class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    int? id,
    String? name,
    String? nameInAr,
    String? description,
    String? descriptionInAr,
    double? monthlyPrice,
    double? quarterlyPrice,
    double? semiAnnualPrice,
    double? annualPrice,
    String? currency,
    bool? isDefault,
    bool? isActive,
    List<SubscriptionRole>? roles,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);
}

@freezed
abstract class SubscriptionRole with _$SubscriptionRole {
  const factory SubscriptionRole({
    int? id,
    String? roleName,
    String? roleNameInAr,
    int? resourceType,
    int? limitType,
    int? maxCount,
    double? maxSize,
    String? unit,
    String? description,
    String? descriptionInAr,
    bool? isUnlimited,
    int? priority,
    String? createdAt,
  }) = _SubscriptionRole;

  factory SubscriptionRole.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionRoleFromJson(json);
}

// Simple response for endpoints that return only success/message
@freezed
abstract class SimpleResponse with _$SimpleResponse {
  const SimpleResponse._();

  const factory SimpleResponse({
    bool? success,
    String? message,
    dynamic data,
    List<String>? errors,
  }) = _SimpleResponse;

  factory SimpleResponse.fromJson(Map<String, dynamic> json) =>
      _$SimpleResponseFromJson(json);

  bool get isSuccess => success == true;
}

// Profile response
@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const ProfileResponse._();

  const factory ProfileResponse({
    bool? success,
    String? message,
    UserData? data,
    List<String>? errors,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  bool get isSuccess => success == true;
}

// Academic Stages Response
@freezed
abstract class AcademicStagesResponse with _$AcademicStagesResponse {
  const AcademicStagesResponse._();

  const factory AcademicStagesResponse({
    bool? success,
    String? message,
    List<AcademicStage>? data,
    List<String>? errors,
  }) = _AcademicStagesResponse;

  factory AcademicStagesResponse.fromJson(Map<String, dynamic> json) =>
      _$AcademicStagesResponseFromJson(json);

  bool get isSuccess => success == true;
}

// Academic Years Response
@freezed
abstract class AcademicYearsResponse with _$AcademicYearsResponse {
  const AcademicYearsResponse._();

  const factory AcademicYearsResponse({
    bool? success,
    String? message,
    List<AcademicYear>? data,
    List<String>? errors,
  }) = _AcademicYearsResponse;

  factory AcademicYearsResponse.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearsResponseFromJson(json);

  bool get isSuccess => success == true;
}

// Academic Sections Response
@freezed
abstract class AcademicSectionsResponse with _$AcademicSectionsResponse {
  const AcademicSectionsResponse._();

  const factory AcademicSectionsResponse({
    bool? success,
    String? message,
    List<AcademicSection>? data,
    List<String>? errors,
  }) = _AcademicSectionsResponse;

  factory AcademicSectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AcademicSectionsResponseFromJson(json);

  bool get isSuccess => success == true;
}

// Update Student Profile Request
@freezed
abstract class UpdateStudentProfileRequest with _$UpdateStudentProfileRequest {
  const factory UpdateStudentProfileRequest({
    String? name,
    String? nickname,
    int? gender,
    String? phoneNumber,
    String? dateOfBirth,
    int? academicStageId,
    int? academicYearId,
    int? academicSectionId,
  }) = _UpdateStudentProfileRequest;

  factory UpdateStudentProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStudentProfileRequestFromJson(json);
}

// Student Profile Response (same structure as ProfileResponse)
@freezed
abstract class StudentProfileResponse with _$StudentProfileResponse {
  const StudentProfileResponse._();

  const factory StudentProfileResponse({
    bool? success,
    String? message,
    UserData? data,
    List<String>? errors,
  }) = _StudentProfileResponse;

  factory StudentProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentProfileResponseFromJson(json);

  bool get isSuccess => success == true;
}
