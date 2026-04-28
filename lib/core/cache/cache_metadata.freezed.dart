// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CacheMetadata {

 String get endpoint; DateTime get fetchedAt; DateTime get expiresAt;
/// Create a copy of CacheMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheMetadataCopyWith<CacheMetadata> get copyWith => _$CacheMetadataCopyWithImpl<CacheMetadata>(this as CacheMetadata, _$identity);

  /// Serializes this CacheMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheMetadata&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,endpoint,fetchedAt,expiresAt);

@override
String toString() {
  return 'CacheMetadata(endpoint: $endpoint, fetchedAt: $fetchedAt, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $CacheMetadataCopyWith<$Res>  {
  factory $CacheMetadataCopyWith(CacheMetadata value, $Res Function(CacheMetadata) _then) = _$CacheMetadataCopyWithImpl;
@useResult
$Res call({
 String endpoint, DateTime fetchedAt, DateTime expiresAt
});




}
/// @nodoc
class _$CacheMetadataCopyWithImpl<$Res>
    implements $CacheMetadataCopyWith<$Res> {
  _$CacheMetadataCopyWithImpl(this._self, this._then);

  final CacheMetadata _self;
  final $Res Function(CacheMetadata) _then;

/// Create a copy of CacheMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? endpoint = null,Object? fetchedAt = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
endpoint: null == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CacheMetadata].
extension CacheMetadataPatterns on CacheMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CacheMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CacheMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CacheMetadata value)  $default,){
final _that = this;
switch (_that) {
case _CacheMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CacheMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _CacheMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String endpoint,  DateTime fetchedAt,  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CacheMetadata() when $default != null:
return $default(_that.endpoint,_that.fetchedAt,_that.expiresAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String endpoint,  DateTime fetchedAt,  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _CacheMetadata():
return $default(_that.endpoint,_that.fetchedAt,_that.expiresAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String endpoint,  DateTime fetchedAt,  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _CacheMetadata() when $default != null:
return $default(_that.endpoint,_that.fetchedAt,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CacheMetadata implements CacheMetadata {
  const _CacheMetadata({required this.endpoint, required this.fetchedAt, required this.expiresAt});
  factory _CacheMetadata.fromJson(Map<String, dynamic> json) => _$CacheMetadataFromJson(json);

@override final  String endpoint;
@override final  DateTime fetchedAt;
@override final  DateTime expiresAt;

/// Create a copy of CacheMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CacheMetadataCopyWith<_CacheMetadata> get copyWith => __$CacheMetadataCopyWithImpl<_CacheMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CacheMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CacheMetadata&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,endpoint,fetchedAt,expiresAt);

@override
String toString() {
  return 'CacheMetadata(endpoint: $endpoint, fetchedAt: $fetchedAt, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$CacheMetadataCopyWith<$Res> implements $CacheMetadataCopyWith<$Res> {
  factory _$CacheMetadataCopyWith(_CacheMetadata value, $Res Function(_CacheMetadata) _then) = __$CacheMetadataCopyWithImpl;
@override @useResult
$Res call({
 String endpoint, DateTime fetchedAt, DateTime expiresAt
});




}
/// @nodoc
class __$CacheMetadataCopyWithImpl<$Res>
    implements _$CacheMetadataCopyWith<$Res> {
  __$CacheMetadataCopyWithImpl(this._self, this._then);

  final _CacheMetadata _self;
  final $Res Function(_CacheMetadata) _then;

/// Create a copy of CacheMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? endpoint = null,Object? fetchedAt = null,Object? expiresAt = null,}) {
  return _then(_CacheMetadata(
endpoint: null == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
