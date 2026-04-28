// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    _ApiErrorModel(
      type: $enumDecode(_$ApiErrorTypeEnumMap, json['type']),
      message: json['message'] as String,
      fieldErrors: (json['fieldErrors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      statusCode: (json['statusCode'] as num?)?.toInt(),
      rawError: json['rawError'] as String?,
    );

Map<String, dynamic> _$ApiErrorModelToJson(_ApiErrorModel instance) =>
    <String, dynamic>{
      'type': _$ApiErrorTypeEnumMap[instance.type]!,
      'message': instance.message,
      'fieldErrors': instance.fieldErrors,
      'statusCode': instance.statusCode,
      'rawError': instance.rawError,
    };

const _$ApiErrorTypeEnumMap = {
  ApiErrorType.network: 'network',
  ApiErrorType.server: 'server',
  ApiErrorType.auth: 'auth',
  ApiErrorType.validation: 'validation',
  ApiErrorType.notFound: 'notFound',
  ApiErrorType.unknown: 'unknown',
};
