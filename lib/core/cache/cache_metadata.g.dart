// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CacheMetadata _$CacheMetadataFromJson(Map<String, dynamic> json) =>
    _CacheMetadata(
      endpoint: json['endpoint'] as String,
      fetchedAt: DateTime.parse(json['fetchedAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$CacheMetadataToJson(_CacheMetadata instance) =>
    <String, dynamic>{
      'endpoint': instance.endpoint,
      'fetchedAt': instance.fetchedAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
