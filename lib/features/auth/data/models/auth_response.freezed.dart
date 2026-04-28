// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResponse {

 bool? get success; String? get message; AuthData? get data; List<String>? get errors;
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResponseCopyWith<AuthResponse> get copyWith => _$AuthResponseCopyWithImpl<AuthResponse>(this as AuthResponse, _$identity);

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AuthResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AuthResponseCopyWith<$Res>  {
  factory $AuthResponseCopyWith(AuthResponse value, $Res Function(AuthResponse) _then) = _$AuthResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, AuthData? data, List<String>? errors
});


$AuthDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AuthResponseCopyWithImpl<$Res>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._self, this._then);

  final AuthResponse _self;
  final $Res Function(AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AuthDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthResponse].
extension AuthResponsePatterns on AuthResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  AuthData? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  AuthData? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _AuthResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  AuthData? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResponse extends AuthResponse {
  const _AuthResponse({this.success, this.message, this.data, final  List<String>? errors}): _errors = errors,super._();
  factory _AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
@override final  AuthData? data;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResponseCopyWith<_AuthResponse> get copyWith => __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AuthResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AuthResponseCopyWith<$Res> implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(_AuthResponse value, $Res Function(_AuthResponse) _then) = __$AuthResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, AuthData? data, List<String>? errors
});


@override $AuthDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(this._self, this._then);

  final _AuthResponse _self;
  final $Res Function(_AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_AuthResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthData?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AuthDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AuthData {

 String? get accessToken; String? get refreshToken; String? get expiresAt; UserData? get user; String? get verificationToken;
/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDataCopyWith<AuthData> get copyWith => _$AuthDataCopyWithImpl<AuthData>(this as AuthData, _$identity);

  /// Serializes this AuthData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,expiresAt,user,verificationToken);

@override
String toString() {
  return 'AuthData(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt, user: $user, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class $AuthDataCopyWith<$Res>  {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) _then) = _$AuthDataCopyWithImpl;
@useResult
$Res call({
 String? accessToken, String? refreshToken, String? expiresAt, UserData? user, String? verificationToken
});


$UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthDataCopyWithImpl<$Res>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._self, this._then);

  final AuthData _self;
  final $Res Function(AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? expiresAt = freezed,Object? user = freezed,Object? verificationToken = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthData].
extension AuthDataPatterns on AuthData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthData value)  $default,){
final _that = this;
switch (_that) {
case _AuthData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthData value)?  $default,){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? accessToken,  String? refreshToken,  String? expiresAt,  UserData? user,  String? verificationToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresAt,_that.user,_that.verificationToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? accessToken,  String? refreshToken,  String? expiresAt,  UserData? user,  String? verificationToken)  $default,) {final _that = this;
switch (_that) {
case _AuthData():
return $default(_that.accessToken,_that.refreshToken,_that.expiresAt,_that.user,_that.verificationToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? accessToken,  String? refreshToken,  String? expiresAt,  UserData? user,  String? verificationToken)?  $default,) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresAt,_that.user,_that.verificationToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthData implements AuthData {
  const _AuthData({this.accessToken, this.refreshToken, this.expiresAt, this.user, this.verificationToken});
  factory _AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);

@override final  String? accessToken;
@override final  String? refreshToken;
@override final  String? expiresAt;
@override final  UserData? user;
@override final  String? verificationToken;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthDataCopyWith<_AuthData> get copyWith => __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,expiresAt,user,verificationToken);

@override
String toString() {
  return 'AuthData(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt, user: $user, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) _then) = __$AuthDataCopyWithImpl;
@override @useResult
$Res call({
 String? accessToken, String? refreshToken, String? expiresAt, UserData? user, String? verificationToken
});


@override $UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(this._self, this._then);

  final _AuthData _self;
  final $Res Function(_AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? expiresAt = freezed,Object? user = freezed,Object? verificationToken = freezed,}) {
  return _then(_AuthData(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserData {

 String? get id; String? get email; String? get name; String? get nickname; int? get gender; String? get phoneNumber; String? get dateOfBirth; int? get xp; String? get role; String? get profileImageUrl; bool? get isActive; bool? get emailConfirmed; bool? get phoneNumberConfirmed; bool? get twoFactorEnabled; int? get subscriptionPlanId; int? get academicStageId; int? get academicYearId; int? get academicSectionId; AcademicStage? get academicStage; AcademicYear? get academicYear; AcademicSection? get academicSection; SubscriptionPlan? get subscriptionPlan; List<String>? get roles; String? get createdAt; String? get language;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.role, role) || other.role == role)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.emailConfirmed, emailConfirmed) || other.emailConfirmed == emailConfirmed)&&(identical(other.phoneNumberConfirmed, phoneNumberConfirmed) || other.phoneNumberConfirmed == phoneNumberConfirmed)&&(identical(other.twoFactorEnabled, twoFactorEnabled) || other.twoFactorEnabled == twoFactorEnabled)&&(identical(other.subscriptionPlanId, subscriptionPlanId) || other.subscriptionPlanId == subscriptionPlanId)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.academicSectionId, academicSectionId) || other.academicSectionId == academicSectionId)&&(identical(other.academicStage, academicStage) || other.academicStage == academicStage)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.academicSection, academicSection) || other.academicSection == academicSection)&&(identical(other.subscriptionPlan, subscriptionPlan) || other.subscriptionPlan == subscriptionPlan)&&const DeepCollectionEquality().equals(other.roles, roles)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,name,nickname,gender,phoneNumber,dateOfBirth,xp,role,profileImageUrl,isActive,emailConfirmed,phoneNumberConfirmed,twoFactorEnabled,subscriptionPlanId,academicStageId,academicYearId,academicSectionId,academicStage,academicYear,academicSection,subscriptionPlan,const DeepCollectionEquality().hash(roles),createdAt,language]);

@override
String toString() {
  return 'UserData(id: $id, email: $email, name: $name, nickname: $nickname, gender: $gender, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, xp: $xp, role: $role, profileImageUrl: $profileImageUrl, isActive: $isActive, emailConfirmed: $emailConfirmed, phoneNumberConfirmed: $phoneNumberConfirmed, twoFactorEnabled: $twoFactorEnabled, subscriptionPlanId: $subscriptionPlanId, academicStageId: $academicStageId, academicYearId: $academicYearId, academicSectionId: $academicSectionId, academicStage: $academicStage, academicYear: $academicYear, academicSection: $academicSection, subscriptionPlan: $subscriptionPlan, roles: $roles, createdAt: $createdAt, language: $language)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
 String? id, String? email, String? name, String? nickname, int? gender, String? phoneNumber, String? dateOfBirth, int? xp, String? role, String? profileImageUrl, bool? isActive, bool? emailConfirmed, bool? phoneNumberConfirmed, bool? twoFactorEnabled, int? subscriptionPlanId, int? academicStageId, int? academicYearId, int? academicSectionId, AcademicStage? academicStage, AcademicYear? academicYear, AcademicSection? academicSection, SubscriptionPlan? subscriptionPlan, List<String>? roles, String? createdAt, String? language
});


$AcademicStageCopyWith<$Res>? get academicStage;$AcademicYearCopyWith<$Res>? get academicYear;$AcademicSectionCopyWith<$Res>? get academicSection;$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;

}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? name = freezed,Object? nickname = freezed,Object? gender = freezed,Object? phoneNumber = freezed,Object? dateOfBirth = freezed,Object? xp = freezed,Object? role = freezed,Object? profileImageUrl = freezed,Object? isActive = freezed,Object? emailConfirmed = freezed,Object? phoneNumberConfirmed = freezed,Object? twoFactorEnabled = freezed,Object? subscriptionPlanId = freezed,Object? academicStageId = freezed,Object? academicYearId = freezed,Object? academicSectionId = freezed,Object? academicStage = freezed,Object? academicYear = freezed,Object? academicSection = freezed,Object? subscriptionPlan = freezed,Object? roles = freezed,Object? createdAt = freezed,Object? language = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,emailConfirmed: freezed == emailConfirmed ? _self.emailConfirmed : emailConfirmed // ignore: cast_nullable_to_non_nullable
as bool?,phoneNumberConfirmed: freezed == phoneNumberConfirmed ? _self.phoneNumberConfirmed : phoneNumberConfirmed // ignore: cast_nullable_to_non_nullable
as bool?,twoFactorEnabled: freezed == twoFactorEnabled ? _self.twoFactorEnabled : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
as bool?,subscriptionPlanId: freezed == subscriptionPlanId ? _self.subscriptionPlanId : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
as int?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicYearId: freezed == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int?,academicSectionId: freezed == academicSectionId ? _self.academicSectionId : academicSectionId // ignore: cast_nullable_to_non_nullable
as int?,academicStage: freezed == academicStage ? _self.academicStage : academicStage // ignore: cast_nullable_to_non_nullable
as AcademicStage?,academicYear: freezed == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as AcademicYear?,academicSection: freezed == academicSection ? _self.academicSection : academicSection // ignore: cast_nullable_to_non_nullable
as AcademicSection?,subscriptionPlan: freezed == subscriptionPlan ? _self.subscriptionPlan : subscriptionPlan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan?,roles: freezed == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStageCopyWith<$Res>? get academicStage {
    if (_self.academicStage == null) {
    return null;
  }

  return $AcademicStageCopyWith<$Res>(_self.academicStage!, (value) {
    return _then(_self.copyWith(academicStage: value));
  });
}/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicYearCopyWith<$Res>? get academicYear {
    if (_self.academicYear == null) {
    return null;
  }

  return $AcademicYearCopyWith<$Res>(_self.academicYear!, (value) {
    return _then(_self.copyWith(academicYear: value));
  });
}/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicSectionCopyWith<$Res>? get academicSection {
    if (_self.academicSection == null) {
    return null;
  }

  return $AcademicSectionCopyWith<$Res>(_self.academicSection!, (value) {
    return _then(_self.copyWith(academicSection: value));
  });
}/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
    return null;
  }

  return $SubscriptionPlanCopyWith<$Res>(_self.subscriptionPlan!, (value) {
    return _then(_self.copyWith(subscriptionPlan: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? email,  String? name,  String? nickname,  int? gender,  String? phoneNumber,  String? dateOfBirth,  int? xp,  String? role,  String? profileImageUrl,  bool? isActive,  bool? emailConfirmed,  bool? phoneNumberConfirmed,  bool? twoFactorEnabled,  int? subscriptionPlanId,  int? academicStageId,  int? academicYearId,  int? academicSectionId,  AcademicStage? academicStage,  AcademicYear? academicYear,  AcademicSection? academicSection,  SubscriptionPlan? subscriptionPlan,  List<String>? roles,  String? createdAt,  String? language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.nickname,_that.gender,_that.phoneNumber,_that.dateOfBirth,_that.xp,_that.role,_that.profileImageUrl,_that.isActive,_that.emailConfirmed,_that.phoneNumberConfirmed,_that.twoFactorEnabled,_that.subscriptionPlanId,_that.academicStageId,_that.academicYearId,_that.academicSectionId,_that.academicStage,_that.academicYear,_that.academicSection,_that.subscriptionPlan,_that.roles,_that.createdAt,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? email,  String? name,  String? nickname,  int? gender,  String? phoneNumber,  String? dateOfBirth,  int? xp,  String? role,  String? profileImageUrl,  bool? isActive,  bool? emailConfirmed,  bool? phoneNumberConfirmed,  bool? twoFactorEnabled,  int? subscriptionPlanId,  int? academicStageId,  int? academicYearId,  int? academicSectionId,  AcademicStage? academicStage,  AcademicYear? academicYear,  AcademicSection? academicSection,  SubscriptionPlan? subscriptionPlan,  List<String>? roles,  String? createdAt,  String? language)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.id,_that.email,_that.name,_that.nickname,_that.gender,_that.phoneNumber,_that.dateOfBirth,_that.xp,_that.role,_that.profileImageUrl,_that.isActive,_that.emailConfirmed,_that.phoneNumberConfirmed,_that.twoFactorEnabled,_that.subscriptionPlanId,_that.academicStageId,_that.academicYearId,_that.academicSectionId,_that.academicStage,_that.academicYear,_that.academicSection,_that.subscriptionPlan,_that.roles,_that.createdAt,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? email,  String? name,  String? nickname,  int? gender,  String? phoneNumber,  String? dateOfBirth,  int? xp,  String? role,  String? profileImageUrl,  bool? isActive,  bool? emailConfirmed,  bool? phoneNumberConfirmed,  bool? twoFactorEnabled,  int? subscriptionPlanId,  int? academicStageId,  int? academicYearId,  int? academicSectionId,  AcademicStage? academicStage,  AcademicYear? academicYear,  AcademicSection? academicSection,  SubscriptionPlan? subscriptionPlan,  List<String>? roles,  String? createdAt,  String? language)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.nickname,_that.gender,_that.phoneNumber,_that.dateOfBirth,_that.xp,_that.role,_that.profileImageUrl,_that.isActive,_that.emailConfirmed,_that.phoneNumberConfirmed,_that.twoFactorEnabled,_that.subscriptionPlanId,_that.academicStageId,_that.academicYearId,_that.academicSectionId,_that.academicStage,_that.academicYear,_that.academicSection,_that.subscriptionPlan,_that.roles,_that.createdAt,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData implements UserData {
  const _UserData({this.id, this.email, this.name, this.nickname, this.gender, this.phoneNumber, this.dateOfBirth, this.xp, this.role, this.profileImageUrl, this.isActive, this.emailConfirmed, this.phoneNumberConfirmed, this.twoFactorEnabled, this.subscriptionPlanId, this.academicStageId, this.academicYearId, this.academicSectionId, this.academicStage, this.academicYear, this.academicSection, this.subscriptionPlan, final  List<String>? roles, this.createdAt, this.language}): _roles = roles;
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override final  String? id;
@override final  String? email;
@override final  String? name;
@override final  String? nickname;
@override final  int? gender;
@override final  String? phoneNumber;
@override final  String? dateOfBirth;
@override final  int? xp;
@override final  String? role;
@override final  String? profileImageUrl;
@override final  bool? isActive;
@override final  bool? emailConfirmed;
@override final  bool? phoneNumberConfirmed;
@override final  bool? twoFactorEnabled;
@override final  int? subscriptionPlanId;
@override final  int? academicStageId;
@override final  int? academicYearId;
@override final  int? academicSectionId;
@override final  AcademicStage? academicStage;
@override final  AcademicYear? academicYear;
@override final  AcademicSection? academicSection;
@override final  SubscriptionPlan? subscriptionPlan;
 final  List<String>? _roles;
@override List<String>? get roles {
  final value = _roles;
  if (value == null) return null;
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? createdAt;
@override final  String? language;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.role, role) || other.role == role)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.emailConfirmed, emailConfirmed) || other.emailConfirmed == emailConfirmed)&&(identical(other.phoneNumberConfirmed, phoneNumberConfirmed) || other.phoneNumberConfirmed == phoneNumberConfirmed)&&(identical(other.twoFactorEnabled, twoFactorEnabled) || other.twoFactorEnabled == twoFactorEnabled)&&(identical(other.subscriptionPlanId, subscriptionPlanId) || other.subscriptionPlanId == subscriptionPlanId)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.academicSectionId, academicSectionId) || other.academicSectionId == academicSectionId)&&(identical(other.academicStage, academicStage) || other.academicStage == academicStage)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.academicSection, academicSection) || other.academicSection == academicSection)&&(identical(other.subscriptionPlan, subscriptionPlan) || other.subscriptionPlan == subscriptionPlan)&&const DeepCollectionEquality().equals(other._roles, _roles)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,name,nickname,gender,phoneNumber,dateOfBirth,xp,role,profileImageUrl,isActive,emailConfirmed,phoneNumberConfirmed,twoFactorEnabled,subscriptionPlanId,academicStageId,academicYearId,academicSectionId,academicStage,academicYear,academicSection,subscriptionPlan,const DeepCollectionEquality().hash(_roles),createdAt,language]);

@override
String toString() {
  return 'UserData(id: $id, email: $email, name: $name, nickname: $nickname, gender: $gender, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, xp: $xp, role: $role, profileImageUrl: $profileImageUrl, isActive: $isActive, emailConfirmed: $emailConfirmed, phoneNumberConfirmed: $phoneNumberConfirmed, twoFactorEnabled: $twoFactorEnabled, subscriptionPlanId: $subscriptionPlanId, academicStageId: $academicStageId, academicYearId: $academicYearId, academicSectionId: $academicSectionId, academicStage: $academicStage, academicYear: $academicYear, academicSection: $academicSection, subscriptionPlan: $subscriptionPlan, roles: $roles, createdAt: $createdAt, language: $language)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? email, String? name, String? nickname, int? gender, String? phoneNumber, String? dateOfBirth, int? xp, String? role, String? profileImageUrl, bool? isActive, bool? emailConfirmed, bool? phoneNumberConfirmed, bool? twoFactorEnabled, int? subscriptionPlanId, int? academicStageId, int? academicYearId, int? academicSectionId, AcademicStage? academicStage, AcademicYear? academicYear, AcademicSection? academicSection, SubscriptionPlan? subscriptionPlan, List<String>? roles, String? createdAt, String? language
});


@override $AcademicStageCopyWith<$Res>? get academicStage;@override $AcademicYearCopyWith<$Res>? get academicYear;@override $AcademicSectionCopyWith<$Res>? get academicSection;@override $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;

}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? name = freezed,Object? nickname = freezed,Object? gender = freezed,Object? phoneNumber = freezed,Object? dateOfBirth = freezed,Object? xp = freezed,Object? role = freezed,Object? profileImageUrl = freezed,Object? isActive = freezed,Object? emailConfirmed = freezed,Object? phoneNumberConfirmed = freezed,Object? twoFactorEnabled = freezed,Object? subscriptionPlanId = freezed,Object? academicStageId = freezed,Object? academicYearId = freezed,Object? academicSectionId = freezed,Object? academicStage = freezed,Object? academicYear = freezed,Object? academicSection = freezed,Object? subscriptionPlan = freezed,Object? roles = freezed,Object? createdAt = freezed,Object? language = freezed,}) {
  return _then(_UserData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,emailConfirmed: freezed == emailConfirmed ? _self.emailConfirmed : emailConfirmed // ignore: cast_nullable_to_non_nullable
as bool?,phoneNumberConfirmed: freezed == phoneNumberConfirmed ? _self.phoneNumberConfirmed : phoneNumberConfirmed // ignore: cast_nullable_to_non_nullable
as bool?,twoFactorEnabled: freezed == twoFactorEnabled ? _self.twoFactorEnabled : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
as bool?,subscriptionPlanId: freezed == subscriptionPlanId ? _self.subscriptionPlanId : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
as int?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicYearId: freezed == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int?,academicSectionId: freezed == academicSectionId ? _self.academicSectionId : academicSectionId // ignore: cast_nullable_to_non_nullable
as int?,academicStage: freezed == academicStage ? _self.academicStage : academicStage // ignore: cast_nullable_to_non_nullable
as AcademicStage?,academicYear: freezed == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as AcademicYear?,academicSection: freezed == academicSection ? _self.academicSection : academicSection // ignore: cast_nullable_to_non_nullable
as AcademicSection?,subscriptionPlan: freezed == subscriptionPlan ? _self.subscriptionPlan : subscriptionPlan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan?,roles: freezed == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStageCopyWith<$Res>? get academicStage {
    if (_self.academicStage == null) {
    return null;
  }

  return $AcademicStageCopyWith<$Res>(_self.academicStage!, (value) {
    return _then(_self.copyWith(academicStage: value));
  });
}/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicYearCopyWith<$Res>? get academicYear {
    if (_self.academicYear == null) {
    return null;
  }

  return $AcademicYearCopyWith<$Res>(_self.academicYear!, (value) {
    return _then(_self.copyWith(academicYear: value));
  });
}/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicSectionCopyWith<$Res>? get academicSection {
    if (_self.academicSection == null) {
    return null;
  }

  return $AcademicSectionCopyWith<$Res>(_self.academicSection!, (value) {
    return _then(_self.copyWith(academicSection: value));
  });
}/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
    return null;
  }

  return $SubscriptionPlanCopyWith<$Res>(_self.subscriptionPlan!, (value) {
    return _then(_self.copyWith(subscriptionPlan: value));
  });
}
}


/// @nodoc
mixin _$AcademicStage {

 int? get id; String? get stageName; String? get stageNameInAr; String? get name; String? get nameInAr;
/// Create a copy of AcademicStage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicStageCopyWith<AcademicStage> get copyWith => _$AcademicStageCopyWithImpl<AcademicStage>(this as AcademicStage, _$identity);

  /// Serializes this AcademicStage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicStage&&(identical(other.id, id) || other.id == id)&&(identical(other.stageName, stageName) || other.stageName == stageName)&&(identical(other.stageNameInAr, stageNameInAr) || other.stageNameInAr == stageNameInAr)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stageName,stageNameInAr,name,nameInAr);

@override
String toString() {
  return 'AcademicStage(id: $id, stageName: $stageName, stageNameInAr: $stageNameInAr, name: $name, nameInAr: $nameInAr)';
}


}

/// @nodoc
abstract mixin class $AcademicStageCopyWith<$Res>  {
  factory $AcademicStageCopyWith(AcademicStage value, $Res Function(AcademicStage) _then) = _$AcademicStageCopyWithImpl;
@useResult
$Res call({
 int? id, String? stageName, String? stageNameInAr, String? name, String? nameInAr
});




}
/// @nodoc
class _$AcademicStageCopyWithImpl<$Res>
    implements $AcademicStageCopyWith<$Res> {
  _$AcademicStageCopyWithImpl(this._self, this._then);

  final AcademicStage _self;
  final $Res Function(AcademicStage) _then;

/// Create a copy of AcademicStage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? stageName = freezed,Object? stageNameInAr = freezed,Object? name = freezed,Object? nameInAr = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,stageName: freezed == stageName ? _self.stageName : stageName // ignore: cast_nullable_to_non_nullable
as String?,stageNameInAr: freezed == stageNameInAr ? _self.stageNameInAr : stageNameInAr // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicStage].
extension AcademicStagePatterns on AcademicStage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicStage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicStage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicStage value)  $default,){
final _that = this;
switch (_that) {
case _AcademicStage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicStage value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicStage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? stageName,  String? stageNameInAr,  String? name,  String? nameInAr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicStage() when $default != null:
return $default(_that.id,_that.stageName,_that.stageNameInAr,_that.name,_that.nameInAr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? stageName,  String? stageNameInAr,  String? name,  String? nameInAr)  $default,) {final _that = this;
switch (_that) {
case _AcademicStage():
return $default(_that.id,_that.stageName,_that.stageNameInAr,_that.name,_that.nameInAr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? stageName,  String? stageNameInAr,  String? name,  String? nameInAr)?  $default,) {final _that = this;
switch (_that) {
case _AcademicStage() when $default != null:
return $default(_that.id,_that.stageName,_that.stageNameInAr,_that.name,_that.nameInAr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicStage implements AcademicStage {
  const _AcademicStage({this.id, this.stageName, this.stageNameInAr, this.name, this.nameInAr});
  factory _AcademicStage.fromJson(Map<String, dynamic> json) => _$AcademicStageFromJson(json);

@override final  int? id;
@override final  String? stageName;
@override final  String? stageNameInAr;
@override final  String? name;
@override final  String? nameInAr;

/// Create a copy of AcademicStage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicStageCopyWith<_AcademicStage> get copyWith => __$AcademicStageCopyWithImpl<_AcademicStage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicStageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicStage&&(identical(other.id, id) || other.id == id)&&(identical(other.stageName, stageName) || other.stageName == stageName)&&(identical(other.stageNameInAr, stageNameInAr) || other.stageNameInAr == stageNameInAr)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stageName,stageNameInAr,name,nameInAr);

@override
String toString() {
  return 'AcademicStage(id: $id, stageName: $stageName, stageNameInAr: $stageNameInAr, name: $name, nameInAr: $nameInAr)';
}


}

/// @nodoc
abstract mixin class _$AcademicStageCopyWith<$Res> implements $AcademicStageCopyWith<$Res> {
  factory _$AcademicStageCopyWith(_AcademicStage value, $Res Function(_AcademicStage) _then) = __$AcademicStageCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? stageName, String? stageNameInAr, String? name, String? nameInAr
});




}
/// @nodoc
class __$AcademicStageCopyWithImpl<$Res>
    implements _$AcademicStageCopyWith<$Res> {
  __$AcademicStageCopyWithImpl(this._self, this._then);

  final _AcademicStage _self;
  final $Res Function(_AcademicStage) _then;

/// Create a copy of AcademicStage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? stageName = freezed,Object? stageNameInAr = freezed,Object? name = freezed,Object? nameInAr = freezed,}) {
  return _then(_AcademicStage(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,stageName: freezed == stageName ? _self.stageName : stageName // ignore: cast_nullable_to_non_nullable
as String?,stageNameInAr: freezed == stageNameInAr ? _self.stageNameInAr : stageNameInAr // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AcademicYear {

 int? get id; String? get yearName; String? get yearNameInAr; int? get academicStageId; AcademicStage? get academicStage; String? get name; String? get nameInAr;
/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicYearCopyWith<AcademicYear> get copyWith => _$AcademicYearCopyWithImpl<AcademicYear>(this as AcademicYear, _$identity);

  /// Serializes this AcademicYear to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicYear&&(identical(other.id, id) || other.id == id)&&(identical(other.yearName, yearName) || other.yearName == yearName)&&(identical(other.yearNameInAr, yearNameInAr) || other.yearNameInAr == yearNameInAr)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicStage, academicStage) || other.academicStage == academicStage)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,yearName,yearNameInAr,academicStageId,academicStage,name,nameInAr);

@override
String toString() {
  return 'AcademicYear(id: $id, yearName: $yearName, yearNameInAr: $yearNameInAr, academicStageId: $academicStageId, academicStage: $academicStage, name: $name, nameInAr: $nameInAr)';
}


}

/// @nodoc
abstract mixin class $AcademicYearCopyWith<$Res>  {
  factory $AcademicYearCopyWith(AcademicYear value, $Res Function(AcademicYear) _then) = _$AcademicYearCopyWithImpl;
@useResult
$Res call({
 int? id, String? yearName, String? yearNameInAr, int? academicStageId, AcademicStage? academicStage, String? name, String? nameInAr
});


$AcademicStageCopyWith<$Res>? get academicStage;

}
/// @nodoc
class _$AcademicYearCopyWithImpl<$Res>
    implements $AcademicYearCopyWith<$Res> {
  _$AcademicYearCopyWithImpl(this._self, this._then);

  final AcademicYear _self;
  final $Res Function(AcademicYear) _then;

/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? yearName = freezed,Object? yearNameInAr = freezed,Object? academicStageId = freezed,Object? academicStage = freezed,Object? name = freezed,Object? nameInAr = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,yearName: freezed == yearName ? _self.yearName : yearName // ignore: cast_nullable_to_non_nullable
as String?,yearNameInAr: freezed == yearNameInAr ? _self.yearNameInAr : yearNameInAr // ignore: cast_nullable_to_non_nullable
as String?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicStage: freezed == academicStage ? _self.academicStage : academicStage // ignore: cast_nullable_to_non_nullable
as AcademicStage?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStageCopyWith<$Res>? get academicStage {
    if (_self.academicStage == null) {
    return null;
  }

  return $AcademicStageCopyWith<$Res>(_self.academicStage!, (value) {
    return _then(_self.copyWith(academicStage: value));
  });
}
}


/// Adds pattern-matching-related methods to [AcademicYear].
extension AcademicYearPatterns on AcademicYear {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicYear value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicYear() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicYear value)  $default,){
final _that = this;
switch (_that) {
case _AcademicYear():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicYear value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicYear() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? yearName,  String? yearNameInAr,  int? academicStageId,  AcademicStage? academicStage,  String? name,  String? nameInAr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicYear() when $default != null:
return $default(_that.id,_that.yearName,_that.yearNameInAr,_that.academicStageId,_that.academicStage,_that.name,_that.nameInAr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? yearName,  String? yearNameInAr,  int? academicStageId,  AcademicStage? academicStage,  String? name,  String? nameInAr)  $default,) {final _that = this;
switch (_that) {
case _AcademicYear():
return $default(_that.id,_that.yearName,_that.yearNameInAr,_that.academicStageId,_that.academicStage,_that.name,_that.nameInAr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? yearName,  String? yearNameInAr,  int? academicStageId,  AcademicStage? academicStage,  String? name,  String? nameInAr)?  $default,) {final _that = this;
switch (_that) {
case _AcademicYear() when $default != null:
return $default(_that.id,_that.yearName,_that.yearNameInAr,_that.academicStageId,_that.academicStage,_that.name,_that.nameInAr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicYear implements AcademicYear {
  const _AcademicYear({this.id, this.yearName, this.yearNameInAr, this.academicStageId, this.academicStage, this.name, this.nameInAr});
  factory _AcademicYear.fromJson(Map<String, dynamic> json) => _$AcademicYearFromJson(json);

@override final  int? id;
@override final  String? yearName;
@override final  String? yearNameInAr;
@override final  int? academicStageId;
@override final  AcademicStage? academicStage;
@override final  String? name;
@override final  String? nameInAr;

/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicYearCopyWith<_AcademicYear> get copyWith => __$AcademicYearCopyWithImpl<_AcademicYear>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicYearToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicYear&&(identical(other.id, id) || other.id == id)&&(identical(other.yearName, yearName) || other.yearName == yearName)&&(identical(other.yearNameInAr, yearNameInAr) || other.yearNameInAr == yearNameInAr)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicStage, academicStage) || other.academicStage == academicStage)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,yearName,yearNameInAr,academicStageId,academicStage,name,nameInAr);

@override
String toString() {
  return 'AcademicYear(id: $id, yearName: $yearName, yearNameInAr: $yearNameInAr, academicStageId: $academicStageId, academicStage: $academicStage, name: $name, nameInAr: $nameInAr)';
}


}

/// @nodoc
abstract mixin class _$AcademicYearCopyWith<$Res> implements $AcademicYearCopyWith<$Res> {
  factory _$AcademicYearCopyWith(_AcademicYear value, $Res Function(_AcademicYear) _then) = __$AcademicYearCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? yearName, String? yearNameInAr, int? academicStageId, AcademicStage? academicStage, String? name, String? nameInAr
});


@override $AcademicStageCopyWith<$Res>? get academicStage;

}
/// @nodoc
class __$AcademicYearCopyWithImpl<$Res>
    implements _$AcademicYearCopyWith<$Res> {
  __$AcademicYearCopyWithImpl(this._self, this._then);

  final _AcademicYear _self;
  final $Res Function(_AcademicYear) _then;

/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? yearName = freezed,Object? yearNameInAr = freezed,Object? academicStageId = freezed,Object? academicStage = freezed,Object? name = freezed,Object? nameInAr = freezed,}) {
  return _then(_AcademicYear(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,yearName: freezed == yearName ? _self.yearName : yearName // ignore: cast_nullable_to_non_nullable
as String?,yearNameInAr: freezed == yearNameInAr ? _self.yearNameInAr : yearNameInAr // ignore: cast_nullable_to_non_nullable
as String?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicStage: freezed == academicStage ? _self.academicStage : academicStage // ignore: cast_nullable_to_non_nullable
as AcademicStage?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStageCopyWith<$Res>? get academicStage {
    if (_self.academicStage == null) {
    return null;
  }

  return $AcademicStageCopyWith<$Res>(_self.academicStage!, (value) {
    return _then(_self.copyWith(academicStage: value));
  });
}
}


/// @nodoc
mixin _$AcademicSection {

 int? get id; String? get sectionName; String? get sectionNameInAr; String? get name; String? get nameInAr;
/// Create a copy of AcademicSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicSectionCopyWith<AcademicSection> get copyWith => _$AcademicSectionCopyWithImpl<AcademicSection>(this as AcademicSection, _$identity);

  /// Serializes this AcademicSection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicSection&&(identical(other.id, id) || other.id == id)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.sectionNameInAr, sectionNameInAr) || other.sectionNameInAr == sectionNameInAr)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sectionName,sectionNameInAr,name,nameInAr);

@override
String toString() {
  return 'AcademicSection(id: $id, sectionName: $sectionName, sectionNameInAr: $sectionNameInAr, name: $name, nameInAr: $nameInAr)';
}


}

/// @nodoc
abstract mixin class $AcademicSectionCopyWith<$Res>  {
  factory $AcademicSectionCopyWith(AcademicSection value, $Res Function(AcademicSection) _then) = _$AcademicSectionCopyWithImpl;
@useResult
$Res call({
 int? id, String? sectionName, String? sectionNameInAr, String? name, String? nameInAr
});




}
/// @nodoc
class _$AcademicSectionCopyWithImpl<$Res>
    implements $AcademicSectionCopyWith<$Res> {
  _$AcademicSectionCopyWithImpl(this._self, this._then);

  final AcademicSection _self;
  final $Res Function(AcademicSection) _then;

/// Create a copy of AcademicSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? sectionName = freezed,Object? sectionNameInAr = freezed,Object? name = freezed,Object? nameInAr = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,sectionNameInAr: freezed == sectionNameInAr ? _self.sectionNameInAr : sectionNameInAr // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicSection].
extension AcademicSectionPatterns on AcademicSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicSection value)  $default,){
final _that = this;
switch (_that) {
case _AcademicSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicSection value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? sectionName,  String? sectionNameInAr,  String? name,  String? nameInAr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicSection() when $default != null:
return $default(_that.id,_that.sectionName,_that.sectionNameInAr,_that.name,_that.nameInAr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? sectionName,  String? sectionNameInAr,  String? name,  String? nameInAr)  $default,) {final _that = this;
switch (_that) {
case _AcademicSection():
return $default(_that.id,_that.sectionName,_that.sectionNameInAr,_that.name,_that.nameInAr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? sectionName,  String? sectionNameInAr,  String? name,  String? nameInAr)?  $default,) {final _that = this;
switch (_that) {
case _AcademicSection() when $default != null:
return $default(_that.id,_that.sectionName,_that.sectionNameInAr,_that.name,_that.nameInAr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicSection implements AcademicSection {
  const _AcademicSection({this.id, this.sectionName, this.sectionNameInAr, this.name, this.nameInAr});
  factory _AcademicSection.fromJson(Map<String, dynamic> json) => _$AcademicSectionFromJson(json);

@override final  int? id;
@override final  String? sectionName;
@override final  String? sectionNameInAr;
@override final  String? name;
@override final  String? nameInAr;

/// Create a copy of AcademicSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicSectionCopyWith<_AcademicSection> get copyWith => __$AcademicSectionCopyWithImpl<_AcademicSection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicSectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicSection&&(identical(other.id, id) || other.id == id)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.sectionNameInAr, sectionNameInAr) || other.sectionNameInAr == sectionNameInAr)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sectionName,sectionNameInAr,name,nameInAr);

@override
String toString() {
  return 'AcademicSection(id: $id, sectionName: $sectionName, sectionNameInAr: $sectionNameInAr, name: $name, nameInAr: $nameInAr)';
}


}

/// @nodoc
abstract mixin class _$AcademicSectionCopyWith<$Res> implements $AcademicSectionCopyWith<$Res> {
  factory _$AcademicSectionCopyWith(_AcademicSection value, $Res Function(_AcademicSection) _then) = __$AcademicSectionCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? sectionName, String? sectionNameInAr, String? name, String? nameInAr
});




}
/// @nodoc
class __$AcademicSectionCopyWithImpl<$Res>
    implements _$AcademicSectionCopyWith<$Res> {
  __$AcademicSectionCopyWithImpl(this._self, this._then);

  final _AcademicSection _self;
  final $Res Function(_AcademicSection) _then;

/// Create a copy of AcademicSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? sectionName = freezed,Object? sectionNameInAr = freezed,Object? name = freezed,Object? nameInAr = freezed,}) {
  return _then(_AcademicSection(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,sectionNameInAr: freezed == sectionNameInAr ? _self.sectionNameInAr : sectionNameInAr // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SubscriptionPlan {

 int? get id; String? get name; String? get nameInAr; String? get description; String? get descriptionInAr; double? get monthlyPrice; double? get quarterlyPrice; double? get semiAnnualPrice; double? get annualPrice; String? get currency; bool? get isDefault; bool? get isActive; List<SubscriptionRole>? get roles;
/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<SubscriptionPlan> get copyWith => _$SubscriptionPlanCopyWithImpl<SubscriptionPlan>(this as SubscriptionPlan, _$identity);

  /// Serializes this SubscriptionPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionInAr, descriptionInAr) || other.descriptionInAr == descriptionInAr)&&(identical(other.monthlyPrice, monthlyPrice) || other.monthlyPrice == monthlyPrice)&&(identical(other.quarterlyPrice, quarterlyPrice) || other.quarterlyPrice == quarterlyPrice)&&(identical(other.semiAnnualPrice, semiAnnualPrice) || other.semiAnnualPrice == semiAnnualPrice)&&(identical(other.annualPrice, annualPrice) || other.annualPrice == annualPrice)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.roles, roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameInAr,description,descriptionInAr,monthlyPrice,quarterlyPrice,semiAnnualPrice,annualPrice,currency,isDefault,isActive,const DeepCollectionEquality().hash(roles));

@override
String toString() {
  return 'SubscriptionPlan(id: $id, name: $name, nameInAr: $nameInAr, description: $description, descriptionInAr: $descriptionInAr, monthlyPrice: $monthlyPrice, quarterlyPrice: $quarterlyPrice, semiAnnualPrice: $semiAnnualPrice, annualPrice: $annualPrice, currency: $currency, isDefault: $isDefault, isActive: $isActive, roles: $roles)';
}


}

/// @nodoc
abstract mixin class $SubscriptionPlanCopyWith<$Res>  {
  factory $SubscriptionPlanCopyWith(SubscriptionPlan value, $Res Function(SubscriptionPlan) _then) = _$SubscriptionPlanCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? nameInAr, String? description, String? descriptionInAr, double? monthlyPrice, double? quarterlyPrice, double? semiAnnualPrice, double? annualPrice, String? currency, bool? isDefault, bool? isActive, List<SubscriptionRole>? roles
});




}
/// @nodoc
class _$SubscriptionPlanCopyWithImpl<$Res>
    implements $SubscriptionPlanCopyWith<$Res> {
  _$SubscriptionPlanCopyWithImpl(this._self, this._then);

  final SubscriptionPlan _self;
  final $Res Function(SubscriptionPlan) _then;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? nameInAr = freezed,Object? description = freezed,Object? descriptionInAr = freezed,Object? monthlyPrice = freezed,Object? quarterlyPrice = freezed,Object? semiAnnualPrice = freezed,Object? annualPrice = freezed,Object? currency = freezed,Object? isDefault = freezed,Object? isActive = freezed,Object? roles = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionInAr: freezed == descriptionInAr ? _self.descriptionInAr : descriptionInAr // ignore: cast_nullable_to_non_nullable
as String?,monthlyPrice: freezed == monthlyPrice ? _self.monthlyPrice : monthlyPrice // ignore: cast_nullable_to_non_nullable
as double?,quarterlyPrice: freezed == quarterlyPrice ? _self.quarterlyPrice : quarterlyPrice // ignore: cast_nullable_to_non_nullable
as double?,semiAnnualPrice: freezed == semiAnnualPrice ? _self.semiAnnualPrice : semiAnnualPrice // ignore: cast_nullable_to_non_nullable
as double?,annualPrice: freezed == annualPrice ? _self.annualPrice : annualPrice // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,roles: freezed == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<SubscriptionRole>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionPlan].
extension SubscriptionPlanPatterns on SubscriptionPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPlan value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPlan value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? nameInAr,  String? description,  String? descriptionInAr,  double? monthlyPrice,  double? quarterlyPrice,  double? semiAnnualPrice,  double? annualPrice,  String? currency,  bool? isDefault,  bool? isActive,  List<SubscriptionRole>? roles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
return $default(_that.id,_that.name,_that.nameInAr,_that.description,_that.descriptionInAr,_that.monthlyPrice,_that.quarterlyPrice,_that.semiAnnualPrice,_that.annualPrice,_that.currency,_that.isDefault,_that.isActive,_that.roles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? nameInAr,  String? description,  String? descriptionInAr,  double? monthlyPrice,  double? quarterlyPrice,  double? semiAnnualPrice,  double? annualPrice,  String? currency,  bool? isDefault,  bool? isActive,  List<SubscriptionRole>? roles)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlan():
return $default(_that.id,_that.name,_that.nameInAr,_that.description,_that.descriptionInAr,_that.monthlyPrice,_that.quarterlyPrice,_that.semiAnnualPrice,_that.annualPrice,_that.currency,_that.isDefault,_that.isActive,_that.roles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? nameInAr,  String? description,  String? descriptionInAr,  double? monthlyPrice,  double? quarterlyPrice,  double? semiAnnualPrice,  double? annualPrice,  String? currency,  bool? isDefault,  bool? isActive,  List<SubscriptionRole>? roles)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
return $default(_that.id,_that.name,_that.nameInAr,_that.description,_that.descriptionInAr,_that.monthlyPrice,_that.quarterlyPrice,_that.semiAnnualPrice,_that.annualPrice,_that.currency,_that.isDefault,_that.isActive,_that.roles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPlan implements SubscriptionPlan {
  const _SubscriptionPlan({this.id, this.name, this.nameInAr, this.description, this.descriptionInAr, this.monthlyPrice, this.quarterlyPrice, this.semiAnnualPrice, this.annualPrice, this.currency, this.isDefault, this.isActive, final  List<SubscriptionRole>? roles}): _roles = roles;
  factory _SubscriptionPlan.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? nameInAr;
@override final  String? description;
@override final  String? descriptionInAr;
@override final  double? monthlyPrice;
@override final  double? quarterlyPrice;
@override final  double? semiAnnualPrice;
@override final  double? annualPrice;
@override final  String? currency;
@override final  bool? isDefault;
@override final  bool? isActive;
 final  List<SubscriptionRole>? _roles;
@override List<SubscriptionRole>? get roles {
  final value = _roles;
  if (value == null) return null;
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPlanCopyWith<_SubscriptionPlan> get copyWith => __$SubscriptionPlanCopyWithImpl<_SubscriptionPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPlanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameInAr, nameInAr) || other.nameInAr == nameInAr)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionInAr, descriptionInAr) || other.descriptionInAr == descriptionInAr)&&(identical(other.monthlyPrice, monthlyPrice) || other.monthlyPrice == monthlyPrice)&&(identical(other.quarterlyPrice, quarterlyPrice) || other.quarterlyPrice == quarterlyPrice)&&(identical(other.semiAnnualPrice, semiAnnualPrice) || other.semiAnnualPrice == semiAnnualPrice)&&(identical(other.annualPrice, annualPrice) || other.annualPrice == annualPrice)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._roles, _roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameInAr,description,descriptionInAr,monthlyPrice,quarterlyPrice,semiAnnualPrice,annualPrice,currency,isDefault,isActive,const DeepCollectionEquality().hash(_roles));

@override
String toString() {
  return 'SubscriptionPlan(id: $id, name: $name, nameInAr: $nameInAr, description: $description, descriptionInAr: $descriptionInAr, monthlyPrice: $monthlyPrice, quarterlyPrice: $quarterlyPrice, semiAnnualPrice: $semiAnnualPrice, annualPrice: $annualPrice, currency: $currency, isDefault: $isDefault, isActive: $isActive, roles: $roles)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPlanCopyWith<$Res> implements $SubscriptionPlanCopyWith<$Res> {
  factory _$SubscriptionPlanCopyWith(_SubscriptionPlan value, $Res Function(_SubscriptionPlan) _then) = __$SubscriptionPlanCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? nameInAr, String? description, String? descriptionInAr, double? monthlyPrice, double? quarterlyPrice, double? semiAnnualPrice, double? annualPrice, String? currency, bool? isDefault, bool? isActive, List<SubscriptionRole>? roles
});




}
/// @nodoc
class __$SubscriptionPlanCopyWithImpl<$Res>
    implements _$SubscriptionPlanCopyWith<$Res> {
  __$SubscriptionPlanCopyWithImpl(this._self, this._then);

  final _SubscriptionPlan _self;
  final $Res Function(_SubscriptionPlan) _then;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? nameInAr = freezed,Object? description = freezed,Object? descriptionInAr = freezed,Object? monthlyPrice = freezed,Object? quarterlyPrice = freezed,Object? semiAnnualPrice = freezed,Object? annualPrice = freezed,Object? currency = freezed,Object? isDefault = freezed,Object? isActive = freezed,Object? roles = freezed,}) {
  return _then(_SubscriptionPlan(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameInAr: freezed == nameInAr ? _self.nameInAr : nameInAr // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionInAr: freezed == descriptionInAr ? _self.descriptionInAr : descriptionInAr // ignore: cast_nullable_to_non_nullable
as String?,monthlyPrice: freezed == monthlyPrice ? _self.monthlyPrice : monthlyPrice // ignore: cast_nullable_to_non_nullable
as double?,quarterlyPrice: freezed == quarterlyPrice ? _self.quarterlyPrice : quarterlyPrice // ignore: cast_nullable_to_non_nullable
as double?,semiAnnualPrice: freezed == semiAnnualPrice ? _self.semiAnnualPrice : semiAnnualPrice // ignore: cast_nullable_to_non_nullable
as double?,annualPrice: freezed == annualPrice ? _self.annualPrice : annualPrice // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,roles: freezed == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<SubscriptionRole>?,
  ));
}


}


/// @nodoc
mixin _$SubscriptionRole {

 int? get id; String? get roleName; String? get roleNameInAr; int? get resourceType; int? get limitType; int? get maxCount; double? get maxSize; String? get unit; String? get description; String? get descriptionInAr; bool? get isUnlimited; int? get priority; String? get createdAt;
/// Create a copy of SubscriptionRole
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionRoleCopyWith<SubscriptionRole> get copyWith => _$SubscriptionRoleCopyWithImpl<SubscriptionRole>(this as SubscriptionRole, _$identity);

  /// Serializes this SubscriptionRole to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionRole&&(identical(other.id, id) || other.id == id)&&(identical(other.roleName, roleName) || other.roleName == roleName)&&(identical(other.roleNameInAr, roleNameInAr) || other.roleNameInAr == roleNameInAr)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.limitType, limitType) || other.limitType == limitType)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.maxSize, maxSize) || other.maxSize == maxSize)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionInAr, descriptionInAr) || other.descriptionInAr == descriptionInAr)&&(identical(other.isUnlimited, isUnlimited) || other.isUnlimited == isUnlimited)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roleName,roleNameInAr,resourceType,limitType,maxCount,maxSize,unit,description,descriptionInAr,isUnlimited,priority,createdAt);

@override
String toString() {
  return 'SubscriptionRole(id: $id, roleName: $roleName, roleNameInAr: $roleNameInAr, resourceType: $resourceType, limitType: $limitType, maxCount: $maxCount, maxSize: $maxSize, unit: $unit, description: $description, descriptionInAr: $descriptionInAr, isUnlimited: $isUnlimited, priority: $priority, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SubscriptionRoleCopyWith<$Res>  {
  factory $SubscriptionRoleCopyWith(SubscriptionRole value, $Res Function(SubscriptionRole) _then) = _$SubscriptionRoleCopyWithImpl;
@useResult
$Res call({
 int? id, String? roleName, String? roleNameInAr, int? resourceType, int? limitType, int? maxCount, double? maxSize, String? unit, String? description, String? descriptionInAr, bool? isUnlimited, int? priority, String? createdAt
});




}
/// @nodoc
class _$SubscriptionRoleCopyWithImpl<$Res>
    implements $SubscriptionRoleCopyWith<$Res> {
  _$SubscriptionRoleCopyWithImpl(this._self, this._then);

  final SubscriptionRole _self;
  final $Res Function(SubscriptionRole) _then;

/// Create a copy of SubscriptionRole
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? roleName = freezed,Object? roleNameInAr = freezed,Object? resourceType = freezed,Object? limitType = freezed,Object? maxCount = freezed,Object? maxSize = freezed,Object? unit = freezed,Object? description = freezed,Object? descriptionInAr = freezed,Object? isUnlimited = freezed,Object? priority = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,roleName: freezed == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String?,roleNameInAr: freezed == roleNameInAr ? _self.roleNameInAr : roleNameInAr // ignore: cast_nullable_to_non_nullable
as String?,resourceType: freezed == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as int?,limitType: freezed == limitType ? _self.limitType : limitType // ignore: cast_nullable_to_non_nullable
as int?,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,maxSize: freezed == maxSize ? _self.maxSize : maxSize // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionInAr: freezed == descriptionInAr ? _self.descriptionInAr : descriptionInAr // ignore: cast_nullable_to_non_nullable
as String?,isUnlimited: freezed == isUnlimited ? _self.isUnlimited : isUnlimited // ignore: cast_nullable_to_non_nullable
as bool?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionRole].
extension SubscriptionRolePatterns on SubscriptionRole {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionRole value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionRole() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionRole value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionRole():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionRole value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionRole() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? roleName,  String? roleNameInAr,  int? resourceType,  int? limitType,  int? maxCount,  double? maxSize,  String? unit,  String? description,  String? descriptionInAr,  bool? isUnlimited,  int? priority,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionRole() when $default != null:
return $default(_that.id,_that.roleName,_that.roleNameInAr,_that.resourceType,_that.limitType,_that.maxCount,_that.maxSize,_that.unit,_that.description,_that.descriptionInAr,_that.isUnlimited,_that.priority,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? roleName,  String? roleNameInAr,  int? resourceType,  int? limitType,  int? maxCount,  double? maxSize,  String? unit,  String? description,  String? descriptionInAr,  bool? isUnlimited,  int? priority,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionRole():
return $default(_that.id,_that.roleName,_that.roleNameInAr,_that.resourceType,_that.limitType,_that.maxCount,_that.maxSize,_that.unit,_that.description,_that.descriptionInAr,_that.isUnlimited,_that.priority,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? roleName,  String? roleNameInAr,  int? resourceType,  int? limitType,  int? maxCount,  double? maxSize,  String? unit,  String? description,  String? descriptionInAr,  bool? isUnlimited,  int? priority,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionRole() when $default != null:
return $default(_that.id,_that.roleName,_that.roleNameInAr,_that.resourceType,_that.limitType,_that.maxCount,_that.maxSize,_that.unit,_that.description,_that.descriptionInAr,_that.isUnlimited,_that.priority,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionRole implements SubscriptionRole {
  const _SubscriptionRole({this.id, this.roleName, this.roleNameInAr, this.resourceType, this.limitType, this.maxCount, this.maxSize, this.unit, this.description, this.descriptionInAr, this.isUnlimited, this.priority, this.createdAt});
  factory _SubscriptionRole.fromJson(Map<String, dynamic> json) => _$SubscriptionRoleFromJson(json);

@override final  int? id;
@override final  String? roleName;
@override final  String? roleNameInAr;
@override final  int? resourceType;
@override final  int? limitType;
@override final  int? maxCount;
@override final  double? maxSize;
@override final  String? unit;
@override final  String? description;
@override final  String? descriptionInAr;
@override final  bool? isUnlimited;
@override final  int? priority;
@override final  String? createdAt;

/// Create a copy of SubscriptionRole
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionRoleCopyWith<_SubscriptionRole> get copyWith => __$SubscriptionRoleCopyWithImpl<_SubscriptionRole>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionRoleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionRole&&(identical(other.id, id) || other.id == id)&&(identical(other.roleName, roleName) || other.roleName == roleName)&&(identical(other.roleNameInAr, roleNameInAr) || other.roleNameInAr == roleNameInAr)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.limitType, limitType) || other.limitType == limitType)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.maxSize, maxSize) || other.maxSize == maxSize)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionInAr, descriptionInAr) || other.descriptionInAr == descriptionInAr)&&(identical(other.isUnlimited, isUnlimited) || other.isUnlimited == isUnlimited)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roleName,roleNameInAr,resourceType,limitType,maxCount,maxSize,unit,description,descriptionInAr,isUnlimited,priority,createdAt);

@override
String toString() {
  return 'SubscriptionRole(id: $id, roleName: $roleName, roleNameInAr: $roleNameInAr, resourceType: $resourceType, limitType: $limitType, maxCount: $maxCount, maxSize: $maxSize, unit: $unit, description: $description, descriptionInAr: $descriptionInAr, isUnlimited: $isUnlimited, priority: $priority, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionRoleCopyWith<$Res> implements $SubscriptionRoleCopyWith<$Res> {
  factory _$SubscriptionRoleCopyWith(_SubscriptionRole value, $Res Function(_SubscriptionRole) _then) = __$SubscriptionRoleCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? roleName, String? roleNameInAr, int? resourceType, int? limitType, int? maxCount, double? maxSize, String? unit, String? description, String? descriptionInAr, bool? isUnlimited, int? priority, String? createdAt
});




}
/// @nodoc
class __$SubscriptionRoleCopyWithImpl<$Res>
    implements _$SubscriptionRoleCopyWith<$Res> {
  __$SubscriptionRoleCopyWithImpl(this._self, this._then);

  final _SubscriptionRole _self;
  final $Res Function(_SubscriptionRole) _then;

/// Create a copy of SubscriptionRole
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? roleName = freezed,Object? roleNameInAr = freezed,Object? resourceType = freezed,Object? limitType = freezed,Object? maxCount = freezed,Object? maxSize = freezed,Object? unit = freezed,Object? description = freezed,Object? descriptionInAr = freezed,Object? isUnlimited = freezed,Object? priority = freezed,Object? createdAt = freezed,}) {
  return _then(_SubscriptionRole(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,roleName: freezed == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String?,roleNameInAr: freezed == roleNameInAr ? _self.roleNameInAr : roleNameInAr // ignore: cast_nullable_to_non_nullable
as String?,resourceType: freezed == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as int?,limitType: freezed == limitType ? _self.limitType : limitType // ignore: cast_nullable_to_non_nullable
as int?,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,maxSize: freezed == maxSize ? _self.maxSize : maxSize // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionInAr: freezed == descriptionInAr ? _self.descriptionInAr : descriptionInAr // ignore: cast_nullable_to_non_nullable
as String?,isUnlimited: freezed == isUnlimited ? _self.isUnlimited : isUnlimited // ignore: cast_nullable_to_non_nullable
as bool?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SimpleResponse {

 bool? get success; String? get message; dynamic get data; List<String>? get errors;
/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleResponseCopyWith<SimpleResponse> get copyWith => _$SimpleResponseCopyWithImpl<SimpleResponse>(this as SimpleResponse, _$identity);

  /// Serializes this SimpleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SimpleResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SimpleResponseCopyWith<$Res>  {
  factory $SimpleResponseCopyWith(SimpleResponse value, $Res Function(SimpleResponse) _then) = _$SimpleResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, dynamic data, List<String>? errors
});




}
/// @nodoc
class _$SimpleResponseCopyWithImpl<$Res>
    implements $SimpleResponseCopyWith<$Res> {
  _$SimpleResponseCopyWithImpl(this._self, this._then);

  final SimpleResponse _self;
  final $Res Function(SimpleResponse) _then;

/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SimpleResponse].
extension SimpleResponsePatterns on SimpleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimpleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimpleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimpleResponse value)  $default,){
final _that = this;
switch (_that) {
case _SimpleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimpleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SimpleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  dynamic data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimpleResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  dynamic data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _SimpleResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  dynamic data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _SimpleResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimpleResponse extends SimpleResponse {
  const _SimpleResponse({this.success, this.message, this.data, final  List<String>? errors}): _errors = errors,super._();
  factory _SimpleResponse.fromJson(Map<String, dynamic> json) => _$SimpleResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
@override final  dynamic data;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimpleResponseCopyWith<_SimpleResponse> get copyWith => __$SimpleResponseCopyWithImpl<_SimpleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimpleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimpleResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'SimpleResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SimpleResponseCopyWith<$Res> implements $SimpleResponseCopyWith<$Res> {
  factory _$SimpleResponseCopyWith(_SimpleResponse value, $Res Function(_SimpleResponse) _then) = __$SimpleResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, dynamic data, List<String>? errors
});




}
/// @nodoc
class __$SimpleResponseCopyWithImpl<$Res>
    implements _$SimpleResponseCopyWith<$Res> {
  __$SimpleResponseCopyWithImpl(this._self, this._then);

  final _SimpleResponse _self;
  final $Res Function(_SimpleResponse) _then;

/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_SimpleResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$ProfileResponse {

 bool? get success; String? get message; UserData? get data; List<String>? get errors;
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseCopyWith<ProfileResponse> get copyWith => _$ProfileResponseCopyWithImpl<ProfileResponse>(this as ProfileResponse, _$identity);

  /// Serializes this ProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ProfileResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ProfileResponseCopyWith<$Res>  {
  factory $ProfileResponseCopyWith(ProfileResponse value, $Res Function(ProfileResponse) _then) = _$ProfileResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, UserData? data, List<String>? errors
});


$UserDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._self, this._then);

  final ProfileResponse _self;
  final $Res Function(ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileResponse].
extension ProfileResponsePatterns on ProfileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  UserData? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  UserData? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  UserData? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponse extends ProfileResponse {
  const _ProfileResponse({this.success, this.message, this.data, final  List<String>? errors}): _errors = errors,super._();
  factory _ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
@override final  UserData? data;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseCopyWith<_ProfileResponse> get copyWith => __$ProfileResponseCopyWithImpl<_ProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ProfileResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseCopyWith<$Res> implements $ProfileResponseCopyWith<$Res> {
  factory _$ProfileResponseCopyWith(_ProfileResponse value, $Res Function(_ProfileResponse) _then) = __$ProfileResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, UserData? data, List<String>? errors
});


@override $UserDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ProfileResponseCopyWithImpl<$Res>
    implements _$ProfileResponseCopyWith<$Res> {
  __$ProfileResponseCopyWithImpl(this._self, this._then);

  final _ProfileResponse _self;
  final $Res Function(_ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_ProfileResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AcademicStagesResponse {

 bool? get success; String? get message; List<AcademicStage>? get data; List<String>? get errors;
/// Create a copy of AcademicStagesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicStagesResponseCopyWith<AcademicStagesResponse> get copyWith => _$AcademicStagesResponseCopyWithImpl<AcademicStagesResponse>(this as AcademicStagesResponse, _$identity);

  /// Serializes this AcademicStagesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicStagesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AcademicStagesResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AcademicStagesResponseCopyWith<$Res>  {
  factory $AcademicStagesResponseCopyWith(AcademicStagesResponse value, $Res Function(AcademicStagesResponse) _then) = _$AcademicStagesResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, List<AcademicStage>? data, List<String>? errors
});




}
/// @nodoc
class _$AcademicStagesResponseCopyWithImpl<$Res>
    implements $AcademicStagesResponseCopyWith<$Res> {
  _$AcademicStagesResponseCopyWithImpl(this._self, this._then);

  final AcademicStagesResponse _self;
  final $Res Function(AcademicStagesResponse) _then;

/// Create a copy of AcademicStagesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AcademicStage>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicStagesResponse].
extension AcademicStagesResponsePatterns on AcademicStagesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicStagesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicStagesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicStagesResponse value)  $default,){
final _that = this;
switch (_that) {
case _AcademicStagesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicStagesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicStagesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<AcademicStage>? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicStagesResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<AcademicStage>? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _AcademicStagesResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  List<AcademicStage>? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _AcademicStagesResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicStagesResponse extends AcademicStagesResponse {
  const _AcademicStagesResponse({this.success, this.message, final  List<AcademicStage>? data, final  List<String>? errors}): _data = data,_errors = errors,super._();
  factory _AcademicStagesResponse.fromJson(Map<String, dynamic> json) => _$AcademicStagesResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
 final  List<AcademicStage>? _data;
@override List<AcademicStage>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AcademicStagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicStagesResponseCopyWith<_AcademicStagesResponse> get copyWith => __$AcademicStagesResponseCopyWithImpl<_AcademicStagesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicStagesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicStagesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AcademicStagesResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AcademicStagesResponseCopyWith<$Res> implements $AcademicStagesResponseCopyWith<$Res> {
  factory _$AcademicStagesResponseCopyWith(_AcademicStagesResponse value, $Res Function(_AcademicStagesResponse) _then) = __$AcademicStagesResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, List<AcademicStage>? data, List<String>? errors
});




}
/// @nodoc
class __$AcademicStagesResponseCopyWithImpl<$Res>
    implements _$AcademicStagesResponseCopyWith<$Res> {
  __$AcademicStagesResponseCopyWithImpl(this._self, this._then);

  final _AcademicStagesResponse _self;
  final $Res Function(_AcademicStagesResponse) _then;

/// Create a copy of AcademicStagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_AcademicStagesResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AcademicStage>?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$AcademicYearsResponse {

 bool? get success; String? get message; List<AcademicYear>? get data; List<String>? get errors;
/// Create a copy of AcademicYearsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicYearsResponseCopyWith<AcademicYearsResponse> get copyWith => _$AcademicYearsResponseCopyWithImpl<AcademicYearsResponse>(this as AcademicYearsResponse, _$identity);

  /// Serializes this AcademicYearsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicYearsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AcademicYearsResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AcademicYearsResponseCopyWith<$Res>  {
  factory $AcademicYearsResponseCopyWith(AcademicYearsResponse value, $Res Function(AcademicYearsResponse) _then) = _$AcademicYearsResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, List<AcademicYear>? data, List<String>? errors
});




}
/// @nodoc
class _$AcademicYearsResponseCopyWithImpl<$Res>
    implements $AcademicYearsResponseCopyWith<$Res> {
  _$AcademicYearsResponseCopyWithImpl(this._self, this._then);

  final AcademicYearsResponse _self;
  final $Res Function(AcademicYearsResponse) _then;

/// Create a copy of AcademicYearsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AcademicYear>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicYearsResponse].
extension AcademicYearsResponsePatterns on AcademicYearsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicYearsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicYearsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicYearsResponse value)  $default,){
final _that = this;
switch (_that) {
case _AcademicYearsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicYearsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicYearsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<AcademicYear>? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicYearsResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<AcademicYear>? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _AcademicYearsResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  List<AcademicYear>? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _AcademicYearsResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicYearsResponse extends AcademicYearsResponse {
  const _AcademicYearsResponse({this.success, this.message, final  List<AcademicYear>? data, final  List<String>? errors}): _data = data,_errors = errors,super._();
  factory _AcademicYearsResponse.fromJson(Map<String, dynamic> json) => _$AcademicYearsResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
 final  List<AcademicYear>? _data;
@override List<AcademicYear>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AcademicYearsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicYearsResponseCopyWith<_AcademicYearsResponse> get copyWith => __$AcademicYearsResponseCopyWithImpl<_AcademicYearsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicYearsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicYearsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AcademicYearsResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AcademicYearsResponseCopyWith<$Res> implements $AcademicYearsResponseCopyWith<$Res> {
  factory _$AcademicYearsResponseCopyWith(_AcademicYearsResponse value, $Res Function(_AcademicYearsResponse) _then) = __$AcademicYearsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, List<AcademicYear>? data, List<String>? errors
});




}
/// @nodoc
class __$AcademicYearsResponseCopyWithImpl<$Res>
    implements _$AcademicYearsResponseCopyWith<$Res> {
  __$AcademicYearsResponseCopyWithImpl(this._self, this._then);

  final _AcademicYearsResponse _self;
  final $Res Function(_AcademicYearsResponse) _then;

/// Create a copy of AcademicYearsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_AcademicYearsResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AcademicYear>?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$AcademicSectionsResponse {

 bool? get success; String? get message; List<AcademicSection>? get data; List<String>? get errors;
/// Create a copy of AcademicSectionsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicSectionsResponseCopyWith<AcademicSectionsResponse> get copyWith => _$AcademicSectionsResponseCopyWithImpl<AcademicSectionsResponse>(this as AcademicSectionsResponse, _$identity);

  /// Serializes this AcademicSectionsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicSectionsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AcademicSectionsResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AcademicSectionsResponseCopyWith<$Res>  {
  factory $AcademicSectionsResponseCopyWith(AcademicSectionsResponse value, $Res Function(AcademicSectionsResponse) _then) = _$AcademicSectionsResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, List<AcademicSection>? data, List<String>? errors
});




}
/// @nodoc
class _$AcademicSectionsResponseCopyWithImpl<$Res>
    implements $AcademicSectionsResponseCopyWith<$Res> {
  _$AcademicSectionsResponseCopyWithImpl(this._self, this._then);

  final AcademicSectionsResponse _self;
  final $Res Function(AcademicSectionsResponse) _then;

/// Create a copy of AcademicSectionsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AcademicSection>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicSectionsResponse].
extension AcademicSectionsResponsePatterns on AcademicSectionsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicSectionsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicSectionsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicSectionsResponse value)  $default,){
final _that = this;
switch (_that) {
case _AcademicSectionsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicSectionsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicSectionsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<AcademicSection>? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicSectionsResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  List<AcademicSection>? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _AcademicSectionsResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  List<AcademicSection>? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _AcademicSectionsResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicSectionsResponse extends AcademicSectionsResponse {
  const _AcademicSectionsResponse({this.success, this.message, final  List<AcademicSection>? data, final  List<String>? errors}): _data = data,_errors = errors,super._();
  factory _AcademicSectionsResponse.fromJson(Map<String, dynamic> json) => _$AcademicSectionsResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
 final  List<AcademicSection>? _data;
@override List<AcademicSection>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AcademicSectionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicSectionsResponseCopyWith<_AcademicSectionsResponse> get copyWith => __$AcademicSectionsResponseCopyWithImpl<_AcademicSectionsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicSectionsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicSectionsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AcademicSectionsResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AcademicSectionsResponseCopyWith<$Res> implements $AcademicSectionsResponseCopyWith<$Res> {
  factory _$AcademicSectionsResponseCopyWith(_AcademicSectionsResponse value, $Res Function(_AcademicSectionsResponse) _then) = __$AcademicSectionsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, List<AcademicSection>? data, List<String>? errors
});




}
/// @nodoc
class __$AcademicSectionsResponseCopyWithImpl<$Res>
    implements _$AcademicSectionsResponseCopyWith<$Res> {
  __$AcademicSectionsResponseCopyWithImpl(this._self, this._then);

  final _AcademicSectionsResponse _self;
  final $Res Function(_AcademicSectionsResponse) _then;

/// Create a copy of AcademicSectionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_AcademicSectionsResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AcademicSection>?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$UpdateStudentProfileRequest {

 String? get name; String? get nickname; int? get gender; String? get phoneNumber; String? get dateOfBirth; int? get academicStageId; int? get academicYearId; int? get academicSectionId;
/// Create a copy of UpdateStudentProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStudentProfileRequestCopyWith<UpdateStudentProfileRequest> get copyWith => _$UpdateStudentProfileRequestCopyWithImpl<UpdateStudentProfileRequest>(this as UpdateStudentProfileRequest, _$identity);

  /// Serializes this UpdateStudentProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStudentProfileRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.academicSectionId, academicSectionId) || other.academicSectionId == academicSectionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nickname,gender,phoneNumber,dateOfBirth,academicStageId,academicYearId,academicSectionId);

@override
String toString() {
  return 'UpdateStudentProfileRequest(name: $name, nickname: $nickname, gender: $gender, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, academicStageId: $academicStageId, academicYearId: $academicYearId, academicSectionId: $academicSectionId)';
}


}

/// @nodoc
abstract mixin class $UpdateStudentProfileRequestCopyWith<$Res>  {
  factory $UpdateStudentProfileRequestCopyWith(UpdateStudentProfileRequest value, $Res Function(UpdateStudentProfileRequest) _then) = _$UpdateStudentProfileRequestCopyWithImpl;
@useResult
$Res call({
 String? name, String? nickname, int? gender, String? phoneNumber, String? dateOfBirth, int? academicStageId, int? academicYearId, int? academicSectionId
});




}
/// @nodoc
class _$UpdateStudentProfileRequestCopyWithImpl<$Res>
    implements $UpdateStudentProfileRequestCopyWith<$Res> {
  _$UpdateStudentProfileRequestCopyWithImpl(this._self, this._then);

  final UpdateStudentProfileRequest _self;
  final $Res Function(UpdateStudentProfileRequest) _then;

/// Create a copy of UpdateStudentProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? nickname = freezed,Object? gender = freezed,Object? phoneNumber = freezed,Object? dateOfBirth = freezed,Object? academicStageId = freezed,Object? academicYearId = freezed,Object? academicSectionId = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicYearId: freezed == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int?,academicSectionId: freezed == academicSectionId ? _self.academicSectionId : academicSectionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateStudentProfileRequest].
extension UpdateStudentProfileRequestPatterns on UpdateStudentProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateStudentProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateStudentProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateStudentProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateStudentProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateStudentProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateStudentProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? nickname,  int? gender,  String? phoneNumber,  String? dateOfBirth,  int? academicStageId,  int? academicYearId,  int? academicSectionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateStudentProfileRequest() when $default != null:
return $default(_that.name,_that.nickname,_that.gender,_that.phoneNumber,_that.dateOfBirth,_that.academicStageId,_that.academicYearId,_that.academicSectionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? nickname,  int? gender,  String? phoneNumber,  String? dateOfBirth,  int? academicStageId,  int? academicYearId,  int? academicSectionId)  $default,) {final _that = this;
switch (_that) {
case _UpdateStudentProfileRequest():
return $default(_that.name,_that.nickname,_that.gender,_that.phoneNumber,_that.dateOfBirth,_that.academicStageId,_that.academicYearId,_that.academicSectionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? nickname,  int? gender,  String? phoneNumber,  String? dateOfBirth,  int? academicStageId,  int? academicYearId,  int? academicSectionId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateStudentProfileRequest() when $default != null:
return $default(_that.name,_that.nickname,_that.gender,_that.phoneNumber,_that.dateOfBirth,_that.academicStageId,_that.academicYearId,_that.academicSectionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateStudentProfileRequest implements UpdateStudentProfileRequest {
  const _UpdateStudentProfileRequest({this.name, this.nickname, this.gender, this.phoneNumber, this.dateOfBirth, this.academicStageId, this.academicYearId, this.academicSectionId});
  factory _UpdateStudentProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateStudentProfileRequestFromJson(json);

@override final  String? name;
@override final  String? nickname;
@override final  int? gender;
@override final  String? phoneNumber;
@override final  String? dateOfBirth;
@override final  int? academicStageId;
@override final  int? academicYearId;
@override final  int? academicSectionId;

/// Create a copy of UpdateStudentProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateStudentProfileRequestCopyWith<_UpdateStudentProfileRequest> get copyWith => __$UpdateStudentProfileRequestCopyWithImpl<_UpdateStudentProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateStudentProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStudentProfileRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.academicSectionId, academicSectionId) || other.academicSectionId == academicSectionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nickname,gender,phoneNumber,dateOfBirth,academicStageId,academicYearId,academicSectionId);

@override
String toString() {
  return 'UpdateStudentProfileRequest(name: $name, nickname: $nickname, gender: $gender, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, academicStageId: $academicStageId, academicYearId: $academicYearId, academicSectionId: $academicSectionId)';
}


}

/// @nodoc
abstract mixin class _$UpdateStudentProfileRequestCopyWith<$Res> implements $UpdateStudentProfileRequestCopyWith<$Res> {
  factory _$UpdateStudentProfileRequestCopyWith(_UpdateStudentProfileRequest value, $Res Function(_UpdateStudentProfileRequest) _then) = __$UpdateStudentProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? nickname, int? gender, String? phoneNumber, String? dateOfBirth, int? academicStageId, int? academicYearId, int? academicSectionId
});




}
/// @nodoc
class __$UpdateStudentProfileRequestCopyWithImpl<$Res>
    implements _$UpdateStudentProfileRequestCopyWith<$Res> {
  __$UpdateStudentProfileRequestCopyWithImpl(this._self, this._then);

  final _UpdateStudentProfileRequest _self;
  final $Res Function(_UpdateStudentProfileRequest) _then;

/// Create a copy of UpdateStudentProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? nickname = freezed,Object? gender = freezed,Object? phoneNumber = freezed,Object? dateOfBirth = freezed,Object? academicStageId = freezed,Object? academicYearId = freezed,Object? academicSectionId = freezed,}) {
  return _then(_UpdateStudentProfileRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicYearId: freezed == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int?,academicSectionId: freezed == academicSectionId ? _self.academicSectionId : academicSectionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$StudentProfileResponse {

 bool? get success; String? get message; UserData? get data; List<String>? get errors;
/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileResponseCopyWith<StudentProfileResponse> get copyWith => _$StudentProfileResponseCopyWithImpl<StudentProfileResponse>(this as StudentProfileResponse, _$identity);

  /// Serializes this StudentProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfileResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'StudentProfileResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $StudentProfileResponseCopyWith<$Res>  {
  factory $StudentProfileResponseCopyWith(StudentProfileResponse value, $Res Function(StudentProfileResponse) _then) = _$StudentProfileResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, UserData? data, List<String>? errors
});


$UserDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$StudentProfileResponseCopyWithImpl<$Res>
    implements $StudentProfileResponseCopyWith<$Res> {
  _$StudentProfileResponseCopyWithImpl(this._self, this._then);

  final StudentProfileResponse _self;
  final $Res Function(StudentProfileResponse) _then;

/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentProfileResponse].
extension StudentProfileResponsePatterns on StudentProfileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _StudentProfileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  UserData? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  UserData? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _StudentProfileResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  UserData? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentProfileResponse extends StudentProfileResponse {
  const _StudentProfileResponse({this.success, this.message, this.data, final  List<String>? errors}): _errors = errors,super._();
  factory _StudentProfileResponse.fromJson(Map<String, dynamic> json) => _$StudentProfileResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
@override final  UserData? data;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentProfileResponseCopyWith<_StudentProfileResponse> get copyWith => __$StudentProfileResponseCopyWithImpl<_StudentProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentProfileResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'StudentProfileResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$StudentProfileResponseCopyWith<$Res> implements $StudentProfileResponseCopyWith<$Res> {
  factory _$StudentProfileResponseCopyWith(_StudentProfileResponse value, $Res Function(_StudentProfileResponse) _then) = __$StudentProfileResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, UserData? data, List<String>? errors
});


@override $UserDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$StudentProfileResponseCopyWithImpl<$Res>
    implements _$StudentProfileResponseCopyWith<$Res> {
  __$StudentProfileResponseCopyWithImpl(this._self, this._then);

  final _StudentProfileResponse _self;
  final $Res Function(_StudentProfileResponse) _then;

/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_StudentProfileResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
