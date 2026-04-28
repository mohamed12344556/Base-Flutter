import 'package:freezed_annotation/freezed_annotation.dart';

part 'cache_metadata.freezed.dart';
part 'cache_metadata.g.dart';

/// Metadata about a cached API response.
///
/// Tracks when an endpoint's data was fetched and when it expires
/// to enable intelligent staleness checks.
@freezed
abstract class CacheMetadata with _$CacheMetadata {
  const factory CacheMetadata({
    required String endpoint,
    required DateTime fetchedAt,
    required DateTime expiresAt,
  }) = _CacheMetadata;

  factory CacheMetadata.fromJson(Map<String, dynamic> json) =>
      _$CacheMetadataFromJson(json);
}
