// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AuthData.fromJson(json['data'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_AuthData _$AuthDataFromJson(Map<String, dynamic> json) => _AuthData(
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  expiresAt: json['expiresAt'] as String?,
  user: json['user'] == null
      ? null
      : UserData.fromJson(json['user'] as Map<String, dynamic>),
  verificationToken: json['verificationToken'] as String?,
);

Map<String, dynamic> _$AuthDataToJson(_AuthData instance) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'expiresAt': instance.expiresAt,
  'user': instance.user,
  'verificationToken': instance.verificationToken,
};

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  id: json['id'] as String?,
  email: json['email'] as String?,
  name: json['name'] as String?,
  nickname: json['nickname'] as String?,
  gender: (json['gender'] as num?)?.toInt(),
  phoneNumber: json['phoneNumber'] as String?,
  dateOfBirth: json['dateOfBirth'] as String?,
  xp: (json['xp'] as num?)?.toInt(),
  role: json['role'] as String?,
  profileImageUrl: json['profileImageUrl'] as String?,
  isActive: json['isActive'] as bool?,
  emailConfirmed: json['emailConfirmed'] as bool?,
  phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
  twoFactorEnabled: json['twoFactorEnabled'] as bool?,
  subscriptionPlanId: (json['subscriptionPlanId'] as num?)?.toInt(),
  academicStageId: (json['academicStageId'] as num?)?.toInt(),
  academicYearId: (json['academicYearId'] as num?)?.toInt(),
  academicSectionId: (json['academicSectionId'] as num?)?.toInt(),
  academicStage: json['academicStage'] == null
      ? null
      : AcademicStage.fromJson(json['academicStage'] as Map<String, dynamic>),
  academicYear: json['academicYear'] == null
      ? null
      : AcademicYear.fromJson(json['academicYear'] as Map<String, dynamic>),
  academicSection: json['academicSection'] == null
      ? null
      : AcademicSection.fromJson(
          json['academicSection'] as Map<String, dynamic>,
        ),
  subscriptionPlan: json['subscriptionPlan'] == null
      ? null
      : SubscriptionPlan.fromJson(
          json['subscriptionPlan'] as Map<String, dynamic>,
        ),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
  createdAt: json['createdAt'] as String?,
  language: json['language'] as String?,
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'name': instance.name,
  'nickname': instance.nickname,
  'gender': instance.gender,
  'phoneNumber': instance.phoneNumber,
  'dateOfBirth': instance.dateOfBirth,
  'xp': instance.xp,
  'role': instance.role,
  'profileImageUrl': instance.profileImageUrl,
  'isActive': instance.isActive,
  'emailConfirmed': instance.emailConfirmed,
  'phoneNumberConfirmed': instance.phoneNumberConfirmed,
  'twoFactorEnabled': instance.twoFactorEnabled,
  'subscriptionPlanId': instance.subscriptionPlanId,
  'academicStageId': instance.academicStageId,
  'academicYearId': instance.academicYearId,
  'academicSectionId': instance.academicSectionId,
  'academicStage': instance.academicStage,
  'academicYear': instance.academicYear,
  'academicSection': instance.academicSection,
  'subscriptionPlan': instance.subscriptionPlan,
  'roles': instance.roles,
  'createdAt': instance.createdAt,
  'language': instance.language,
};

_AcademicStage _$AcademicStageFromJson(Map<String, dynamic> json) =>
    _AcademicStage(
      id: (json['id'] as num?)?.toInt(),
      stageName: json['stageName'] as String?,
      stageNameInAr: json['stageNameInAr'] as String?,
      name: json['name'] as String?,
      nameInAr: json['nameInAr'] as String?,
    );

Map<String, dynamic> _$AcademicStageToJson(_AcademicStage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stageName': instance.stageName,
      'stageNameInAr': instance.stageNameInAr,
      'name': instance.name,
      'nameInAr': instance.nameInAr,
    };

_AcademicYear _$AcademicYearFromJson(Map<String, dynamic> json) =>
    _AcademicYear(
      id: (json['id'] as num?)?.toInt(),
      yearName: json['yearName'] as String?,
      yearNameInAr: json['yearNameInAr'] as String?,
      academicStageId: (json['academicStageId'] as num?)?.toInt(),
      academicStage: json['academicStage'] == null
          ? null
          : AcademicStage.fromJson(
              json['academicStage'] as Map<String, dynamic>,
            ),
      name: json['name'] as String?,
      nameInAr: json['nameInAr'] as String?,
    );

Map<String, dynamic> _$AcademicYearToJson(_AcademicYear instance) =>
    <String, dynamic>{
      'id': instance.id,
      'yearName': instance.yearName,
      'yearNameInAr': instance.yearNameInAr,
      'academicStageId': instance.academicStageId,
      'academicStage': instance.academicStage,
      'name': instance.name,
      'nameInAr': instance.nameInAr,
    };

_AcademicSection _$AcademicSectionFromJson(Map<String, dynamic> json) =>
    _AcademicSection(
      id: (json['id'] as num?)?.toInt(),
      sectionName: json['sectionName'] as String?,
      sectionNameInAr: json['sectionNameInAr'] as String?,
      name: json['name'] as String?,
      nameInAr: json['nameInAr'] as String?,
    );

Map<String, dynamic> _$AcademicSectionToJson(_AcademicSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sectionName': instance.sectionName,
      'sectionNameInAr': instance.sectionNameInAr,
      'name': instance.name,
      'nameInAr': instance.nameInAr,
    };

_SubscriptionPlan _$SubscriptionPlanFromJson(Map<String, dynamic> json) =>
    _SubscriptionPlan(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameInAr: json['nameInAr'] as String?,
      description: json['description'] as String?,
      descriptionInAr: json['descriptionInAr'] as String?,
      monthlyPrice: (json['monthlyPrice'] as num?)?.toDouble(),
      quarterlyPrice: (json['quarterlyPrice'] as num?)?.toDouble(),
      semiAnnualPrice: (json['semiAnnualPrice'] as num?)?.toDouble(),
      annualPrice: (json['annualPrice'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      isDefault: json['isDefault'] as bool?,
      isActive: json['isActive'] as bool?,
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => SubscriptionRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionPlanToJson(_SubscriptionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameInAr': instance.nameInAr,
      'description': instance.description,
      'descriptionInAr': instance.descriptionInAr,
      'monthlyPrice': instance.monthlyPrice,
      'quarterlyPrice': instance.quarterlyPrice,
      'semiAnnualPrice': instance.semiAnnualPrice,
      'annualPrice': instance.annualPrice,
      'currency': instance.currency,
      'isDefault': instance.isDefault,
      'isActive': instance.isActive,
      'roles': instance.roles,
    };

_SubscriptionRole _$SubscriptionRoleFromJson(Map<String, dynamic> json) =>
    _SubscriptionRole(
      id: (json['id'] as num?)?.toInt(),
      roleName: json['roleName'] as String?,
      roleNameInAr: json['roleNameInAr'] as String?,
      resourceType: (json['resourceType'] as num?)?.toInt(),
      limitType: (json['limitType'] as num?)?.toInt(),
      maxCount: (json['maxCount'] as num?)?.toInt(),
      maxSize: (json['maxSize'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      description: json['description'] as String?,
      descriptionInAr: json['descriptionInAr'] as String?,
      isUnlimited: json['isUnlimited'] as bool?,
      priority: (json['priority'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$SubscriptionRoleToJson(_SubscriptionRole instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roleName': instance.roleName,
      'roleNameInAr': instance.roleNameInAr,
      'resourceType': instance.resourceType,
      'limitType': instance.limitType,
      'maxCount': instance.maxCount,
      'maxSize': instance.maxSize,
      'unit': instance.unit,
      'description': instance.description,
      'descriptionInAr': instance.descriptionInAr,
      'isUnlimited': instance.isUnlimited,
      'priority': instance.priority,
      'createdAt': instance.createdAt,
    };

_SimpleResponse _$SimpleResponseFromJson(Map<String, dynamic> json) =>
    _SimpleResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SimpleResponseToJson(_SimpleResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_AcademicStagesResponse _$AcademicStagesResponseFromJson(
  Map<String, dynamic> json,
) => _AcademicStagesResponse(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => AcademicStage.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$AcademicStagesResponseToJson(
  _AcademicStagesResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_AcademicYearsResponse _$AcademicYearsResponseFromJson(
  Map<String, dynamic> json,
) => _AcademicYearsResponse(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => AcademicYear.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$AcademicYearsResponseToJson(
  _AcademicYearsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_AcademicSectionsResponse _$AcademicSectionsResponseFromJson(
  Map<String, dynamic> json,
) => _AcademicSectionsResponse(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => AcademicSection.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$AcademicSectionsResponseToJson(
  _AcademicSectionsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_UpdateStudentProfileRequest _$UpdateStudentProfileRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateStudentProfileRequest(
  name: json['name'] as String?,
  nickname: json['nickname'] as String?,
  gender: (json['gender'] as num?)?.toInt(),
  phoneNumber: json['phoneNumber'] as String?,
  dateOfBirth: json['dateOfBirth'] as String?,
  academicStageId: (json['academicStageId'] as num?)?.toInt(),
  academicYearId: (json['academicYearId'] as num?)?.toInt(),
  academicSectionId: (json['academicSectionId'] as num?)?.toInt(),
);

Map<String, dynamic> _$UpdateStudentProfileRequestToJson(
  _UpdateStudentProfileRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'nickname': instance.nickname,
  'gender': instance.gender,
  'phoneNumber': instance.phoneNumber,
  'dateOfBirth': instance.dateOfBirth,
  'academicStageId': instance.academicStageId,
  'academicYearId': instance.academicYearId,
  'academicSectionId': instance.academicSectionId,
};

_StudentProfileResponse _$StudentProfileResponseFromJson(
  Map<String, dynamic> json,
) => _StudentProfileResponse(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserData.fromJson(json['data'] as Map<String, dynamic>),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$StudentProfileResponseToJson(
  _StudentProfileResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};
