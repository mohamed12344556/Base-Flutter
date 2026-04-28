// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiErrorModel {

/// Error category — used to pick icon / copy in the UI.
 ApiErrorType get type;/// ARB localisation key OR raw error message for display.
 String get message;/// Field-level validation errors keyed by field name (HTTP 400/422 only).
 Map<String, String>? get fieldErrors;/// HTTP status code (if available).
 int? get statusCode;/// Raw error string for logging only – never shown to the user.
 String? get rawError;
/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiErrorModelCopyWith<ApiErrorModel> get copyWith => _$ApiErrorModelCopyWithImpl<ApiErrorModel>(this as ApiErrorModel, _$identity);

  /// Serializes this ApiErrorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiErrorModel&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.fieldErrors, fieldErrors)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.rawError, rawError) || other.rawError == rawError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message,const DeepCollectionEquality().hash(fieldErrors),statusCode,rawError);

@override
String toString() {
  return 'ApiErrorModel(type: $type, message: $message, fieldErrors: $fieldErrors, statusCode: $statusCode, rawError: $rawError)';
}


}

/// @nodoc
abstract mixin class $ApiErrorModelCopyWith<$Res>  {
  factory $ApiErrorModelCopyWith(ApiErrorModel value, $Res Function(ApiErrorModel) _then) = _$ApiErrorModelCopyWithImpl;
@useResult
$Res call({
 ApiErrorType type, String message, Map<String, String>? fieldErrors, int? statusCode, String? rawError
});




}
/// @nodoc
class _$ApiErrorModelCopyWithImpl<$Res>
    implements $ApiErrorModelCopyWith<$Res> {
  _$ApiErrorModelCopyWithImpl(this._self, this._then);

  final ApiErrorModel _self;
  final $Res Function(ApiErrorModel) _then;

/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? message = null,Object? fieldErrors = freezed,Object? statusCode = freezed,Object? rawError = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ApiErrorType,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,fieldErrors: freezed == fieldErrors ? _self.fieldErrors : fieldErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,rawError: freezed == rawError ? _self.rawError : rawError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiErrorModel].
extension ApiErrorModelPatterns on ApiErrorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiErrorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiErrorModel value)  $default,){
final _that = this;
switch (_that) {
case _ApiErrorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiErrorModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ApiErrorType type,  String message,  Map<String, String>? fieldErrors,  int? statusCode,  String? rawError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
return $default(_that.type,_that.message,_that.fieldErrors,_that.statusCode,_that.rawError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ApiErrorType type,  String message,  Map<String, String>? fieldErrors,  int? statusCode,  String? rawError)  $default,) {final _that = this;
switch (_that) {
case _ApiErrorModel():
return $default(_that.type,_that.message,_that.fieldErrors,_that.statusCode,_that.rawError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ApiErrorType type,  String message,  Map<String, String>? fieldErrors,  int? statusCode,  String? rawError)?  $default,) {final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
return $default(_that.type,_that.message,_that.fieldErrors,_that.statusCode,_that.rawError);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiErrorModel implements ApiErrorModel {
  const _ApiErrorModel({required this.type, required this.message, final  Map<String, String>? fieldErrors, this.statusCode, this.rawError}): _fieldErrors = fieldErrors;
  factory _ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

/// Error category — used to pick icon / copy in the UI.
@override final  ApiErrorType type;
/// ARB localisation key OR raw error message for display.
@override final  String message;
/// Field-level validation errors keyed by field name (HTTP 400/422 only).
 final  Map<String, String>? _fieldErrors;
/// Field-level validation errors keyed by field name (HTTP 400/422 only).
@override Map<String, String>? get fieldErrors {
  final value = _fieldErrors;
  if (value == null) return null;
  if (_fieldErrors is EqualUnmodifiableMapView) return _fieldErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// HTTP status code (if available).
@override final  int? statusCode;
/// Raw error string for logging only – never shown to the user.
@override final  String? rawError;

/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiErrorModelCopyWith<_ApiErrorModel> get copyWith => __$ApiErrorModelCopyWithImpl<_ApiErrorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiErrorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiErrorModel&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._fieldErrors, _fieldErrors)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.rawError, rawError) || other.rawError == rawError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message,const DeepCollectionEquality().hash(_fieldErrors),statusCode,rawError);

@override
String toString() {
  return 'ApiErrorModel(type: $type, message: $message, fieldErrors: $fieldErrors, statusCode: $statusCode, rawError: $rawError)';
}


}

/// @nodoc
abstract mixin class _$ApiErrorModelCopyWith<$Res> implements $ApiErrorModelCopyWith<$Res> {
  factory _$ApiErrorModelCopyWith(_ApiErrorModel value, $Res Function(_ApiErrorModel) _then) = __$ApiErrorModelCopyWithImpl;
@override @useResult
$Res call({
 ApiErrorType type, String message, Map<String, String>? fieldErrors, int? statusCode, String? rawError
});




}
/// @nodoc
class __$ApiErrorModelCopyWithImpl<$Res>
    implements _$ApiErrorModelCopyWith<$Res> {
  __$ApiErrorModelCopyWithImpl(this._self, this._then);

  final _ApiErrorModel _self;
  final $Res Function(_ApiErrorModel) _then;

/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? message = null,Object? fieldErrors = freezed,Object? statusCode = freezed,Object? rawError = freezed,}) {
  return _then(_ApiErrorModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ApiErrorType,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,fieldErrors: freezed == fieldErrors ? _self._fieldErrors : fieldErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,rawError: freezed == rawError ? _self.rawError : rawError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
