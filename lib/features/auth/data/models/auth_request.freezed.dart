// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthRequest {

 String? get email; String? get password; String? get username; String? get name; String? get phoneNumber; String? get confirmPassword; String? get role;@JsonKey(name: 'AcademicStageId') int? get academicStageId;@JsonKey(name: 'AcademicYearId') int? get academicYearId;@JsonKey(name: 'AcademicSectionId') int? get academicSectionId; String? get currentPassword; String? get newPassword; String? get otp; String? get accessToken; String? get refreshToken; String? get verificationToken;
/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRequestCopyWith<AuthRequest> get copyWith => _$AuthRequestCopyWithImpl<AuthRequest>(this as AuthRequest, _$identity);

  /// Serializes this AuthRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.role, role) || other.role == role)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.academicSectionId, academicSectionId) || other.academicSectionId == academicSectionId)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,username,name,phoneNumber,confirmPassword,role,academicStageId,academicYearId,academicSectionId,currentPassword,newPassword,otp,accessToken,refreshToken,verificationToken);

@override
String toString() {
  return 'AuthRequest(email: $email, password: $password, username: $username, name: $name, phoneNumber: $phoneNumber, confirmPassword: $confirmPassword, role: $role, academicStageId: $academicStageId, academicYearId: $academicYearId, academicSectionId: $academicSectionId, currentPassword: $currentPassword, newPassword: $newPassword, otp: $otp, accessToken: $accessToken, refreshToken: $refreshToken, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class $AuthRequestCopyWith<$Res>  {
  factory $AuthRequestCopyWith(AuthRequest value, $Res Function(AuthRequest) _then) = _$AuthRequestCopyWithImpl;
@useResult
$Res call({
 String? email, String? password, String? username, String? name, String? phoneNumber, String? confirmPassword, String? role,@JsonKey(name: 'AcademicStageId') int? academicStageId,@JsonKey(name: 'AcademicYearId') int? academicYearId,@JsonKey(name: 'AcademicSectionId') int? academicSectionId, String? currentPassword, String? newPassword, String? otp, String? accessToken, String? refreshToken, String? verificationToken
});




}
/// @nodoc
class _$AuthRequestCopyWithImpl<$Res>
    implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(this._self, this._then);

  final AuthRequest _self;
  final $Res Function(AuthRequest) _then;

/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? password = freezed,Object? username = freezed,Object? name = freezed,Object? phoneNumber = freezed,Object? confirmPassword = freezed,Object? role = freezed,Object? academicStageId = freezed,Object? academicYearId = freezed,Object? academicSectionId = freezed,Object? currentPassword = freezed,Object? newPassword = freezed,Object? otp = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? verificationToken = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicYearId: freezed == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int?,academicSectionId: freezed == academicSectionId ? _self.academicSectionId : academicSectionId // ignore: cast_nullable_to_non_nullable
as int?,currentPassword: freezed == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthRequest].
extension AuthRequestPatterns on AuthRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRequest value)  $default,){
final _that = this;
switch (_that) {
case _AuthRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? password,  String? username,  String? name,  String? phoneNumber,  String? confirmPassword,  String? role, @JsonKey(name: 'AcademicStageId')  int? academicStageId, @JsonKey(name: 'AcademicYearId')  int? academicYearId, @JsonKey(name: 'AcademicSectionId')  int? academicSectionId,  String? currentPassword,  String? newPassword,  String? otp,  String? accessToken,  String? refreshToken,  String? verificationToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
return $default(_that.email,_that.password,_that.username,_that.name,_that.phoneNumber,_that.confirmPassword,_that.role,_that.academicStageId,_that.academicYearId,_that.academicSectionId,_that.currentPassword,_that.newPassword,_that.otp,_that.accessToken,_that.refreshToken,_that.verificationToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? password,  String? username,  String? name,  String? phoneNumber,  String? confirmPassword,  String? role, @JsonKey(name: 'AcademicStageId')  int? academicStageId, @JsonKey(name: 'AcademicYearId')  int? academicYearId, @JsonKey(name: 'AcademicSectionId')  int? academicSectionId,  String? currentPassword,  String? newPassword,  String? otp,  String? accessToken,  String? refreshToken,  String? verificationToken)  $default,) {final _that = this;
switch (_that) {
case _AuthRequest():
return $default(_that.email,_that.password,_that.username,_that.name,_that.phoneNumber,_that.confirmPassword,_that.role,_that.academicStageId,_that.academicYearId,_that.academicSectionId,_that.currentPassword,_that.newPassword,_that.otp,_that.accessToken,_that.refreshToken,_that.verificationToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? password,  String? username,  String? name,  String? phoneNumber,  String? confirmPassword,  String? role, @JsonKey(name: 'AcademicStageId')  int? academicStageId, @JsonKey(name: 'AcademicYearId')  int? academicYearId, @JsonKey(name: 'AcademicSectionId')  int? academicSectionId,  String? currentPassword,  String? newPassword,  String? otp,  String? accessToken,  String? refreshToken,  String? verificationToken)?  $default,) {final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
return $default(_that.email,_that.password,_that.username,_that.name,_that.phoneNumber,_that.confirmPassword,_that.role,_that.academicStageId,_that.academicYearId,_that.academicSectionId,_that.currentPassword,_that.newPassword,_that.otp,_that.accessToken,_that.refreshToken,_that.verificationToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthRequest implements AuthRequest {
  const _AuthRequest({this.email, this.password, this.username, this.name, this.phoneNumber, this.confirmPassword, this.role, @JsonKey(name: 'AcademicStageId') this.academicStageId, @JsonKey(name: 'AcademicYearId') this.academicYearId, @JsonKey(name: 'AcademicSectionId') this.academicSectionId, this.currentPassword, this.newPassword, this.otp, this.accessToken, this.refreshToken, this.verificationToken});
  factory _AuthRequest.fromJson(Map<String, dynamic> json) => _$AuthRequestFromJson(json);

@override final  String? email;
@override final  String? password;
@override final  String? username;
@override final  String? name;
@override final  String? phoneNumber;
@override final  String? confirmPassword;
@override final  String? role;
@override@JsonKey(name: 'AcademicStageId') final  int? academicStageId;
@override@JsonKey(name: 'AcademicYearId') final  int? academicYearId;
@override@JsonKey(name: 'AcademicSectionId') final  int? academicSectionId;
@override final  String? currentPassword;
@override final  String? newPassword;
@override final  String? otp;
@override final  String? accessToken;
@override final  String? refreshToken;
@override final  String? verificationToken;

/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRequestCopyWith<_AuthRequest> get copyWith => __$AuthRequestCopyWithImpl<_AuthRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.role, role) || other.role == role)&&(identical(other.academicStageId, academicStageId) || other.academicStageId == academicStageId)&&(identical(other.academicYearId, academicYearId) || other.academicYearId == academicYearId)&&(identical(other.academicSectionId, academicSectionId) || other.academicSectionId == academicSectionId)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,username,name,phoneNumber,confirmPassword,role,academicStageId,academicYearId,academicSectionId,currentPassword,newPassword,otp,accessToken,refreshToken,verificationToken);

@override
String toString() {
  return 'AuthRequest(email: $email, password: $password, username: $username, name: $name, phoneNumber: $phoneNumber, confirmPassword: $confirmPassword, role: $role, academicStageId: $academicStageId, academicYearId: $academicYearId, academicSectionId: $academicSectionId, currentPassword: $currentPassword, newPassword: $newPassword, otp: $otp, accessToken: $accessToken, refreshToken: $refreshToken, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class _$AuthRequestCopyWith<$Res> implements $AuthRequestCopyWith<$Res> {
  factory _$AuthRequestCopyWith(_AuthRequest value, $Res Function(_AuthRequest) _then) = __$AuthRequestCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? password, String? username, String? name, String? phoneNumber, String? confirmPassword, String? role,@JsonKey(name: 'AcademicStageId') int? academicStageId,@JsonKey(name: 'AcademicYearId') int? academicYearId,@JsonKey(name: 'AcademicSectionId') int? academicSectionId, String? currentPassword, String? newPassword, String? otp, String? accessToken, String? refreshToken, String? verificationToken
});




}
/// @nodoc
class __$AuthRequestCopyWithImpl<$Res>
    implements _$AuthRequestCopyWith<$Res> {
  __$AuthRequestCopyWithImpl(this._self, this._then);

  final _AuthRequest _self;
  final $Res Function(_AuthRequest) _then;

/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? password = freezed,Object? username = freezed,Object? name = freezed,Object? phoneNumber = freezed,Object? confirmPassword = freezed,Object? role = freezed,Object? academicStageId = freezed,Object? academicYearId = freezed,Object? academicSectionId = freezed,Object? currentPassword = freezed,Object? newPassword = freezed,Object? otp = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? verificationToken = freezed,}) {
  return _then(_AuthRequest(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,academicStageId: freezed == academicStageId ? _self.academicStageId : academicStageId // ignore: cast_nullable_to_non_nullable
as int?,academicYearId: freezed == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as int?,academicSectionId: freezed == academicSectionId ? _self.academicSectionId : academicSectionId // ignore: cast_nullable_to_non_nullable
as int?,currentPassword: freezed == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
