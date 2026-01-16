// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifySignupState {

 String get name; String get signupEmail; String get signupPassword; String get signupConfirmPassword; List<TextFieldInput> get verificationFieldsSignup; String get message; RequestStatus get requestStatus;
/// Create a copy of VerifySignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifySignupStateCopyWith<VerifySignupState> get copyWith => _$VerifySignupStateCopyWithImpl<VerifySignupState>(this as VerifySignupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifySignupState&&(identical(other.name, name) || other.name == name)&&(identical(other.signupEmail, signupEmail) || other.signupEmail == signupEmail)&&(identical(other.signupPassword, signupPassword) || other.signupPassword == signupPassword)&&(identical(other.signupConfirmPassword, signupConfirmPassword) || other.signupConfirmPassword == signupConfirmPassword)&&const DeepCollectionEquality().equals(other.verificationFieldsSignup, verificationFieldsSignup)&&(identical(other.message, message) || other.message == message)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus));
}


@override
int get hashCode => Object.hash(runtimeType,name,signupEmail,signupPassword,signupConfirmPassword,const DeepCollectionEquality().hash(verificationFieldsSignup),message,requestStatus);

@override
String toString() {
  return 'VerifySignupState(name: $name, signupEmail: $signupEmail, signupPassword: $signupPassword, signupConfirmPassword: $signupConfirmPassword, verificationFieldsSignup: $verificationFieldsSignup, message: $message, requestStatus: $requestStatus)';
}


}

/// @nodoc
abstract mixin class $VerifySignupStateCopyWith<$Res>  {
  factory $VerifySignupStateCopyWith(VerifySignupState value, $Res Function(VerifySignupState) _then) = _$VerifySignupStateCopyWithImpl;
@useResult
$Res call({
 String name, String signupEmail, String signupPassword, String signupConfirmPassword, List<TextFieldInput> verificationFieldsSignup, String message, RequestStatus requestStatus
});




}
/// @nodoc
class _$VerifySignupStateCopyWithImpl<$Res>
    implements $VerifySignupStateCopyWith<$Res> {
  _$VerifySignupStateCopyWithImpl(this._self, this._then);

  final VerifySignupState _self;
  final $Res Function(VerifySignupState) _then;

/// Create a copy of VerifySignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? signupEmail = null,Object? signupPassword = null,Object? signupConfirmPassword = null,Object? verificationFieldsSignup = null,Object? message = null,Object? requestStatus = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,signupEmail: null == signupEmail ? _self.signupEmail : signupEmail // ignore: cast_nullable_to_non_nullable
as String,signupPassword: null == signupPassword ? _self.signupPassword : signupPassword // ignore: cast_nullable_to_non_nullable
as String,signupConfirmPassword: null == signupConfirmPassword ? _self.signupConfirmPassword : signupConfirmPassword // ignore: cast_nullable_to_non_nullable
as String,verificationFieldsSignup: null == verificationFieldsSignup ? _self.verificationFieldsSignup : verificationFieldsSignup // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifySignupState].
extension VerifySignupStatePatterns on VerifySignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifySignupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifySignupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifySignupState value)  $default,){
final _that = this;
switch (_that) {
case _VerifySignupState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifySignupState value)?  $default,){
final _that = this;
switch (_that) {
case _VerifySignupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String signupEmail,  String signupPassword,  String signupConfirmPassword,  List<TextFieldInput> verificationFieldsSignup,  String message,  RequestStatus requestStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifySignupState() when $default != null:
return $default(_that.name,_that.signupEmail,_that.signupPassword,_that.signupConfirmPassword,_that.verificationFieldsSignup,_that.message,_that.requestStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String signupEmail,  String signupPassword,  String signupConfirmPassword,  List<TextFieldInput> verificationFieldsSignup,  String message,  RequestStatus requestStatus)  $default,) {final _that = this;
switch (_that) {
case _VerifySignupState():
return $default(_that.name,_that.signupEmail,_that.signupPassword,_that.signupConfirmPassword,_that.verificationFieldsSignup,_that.message,_that.requestStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String signupEmail,  String signupPassword,  String signupConfirmPassword,  List<TextFieldInput> verificationFieldsSignup,  String message,  RequestStatus requestStatus)?  $default,) {final _that = this;
switch (_that) {
case _VerifySignupState() when $default != null:
return $default(_that.name,_that.signupEmail,_that.signupPassword,_that.signupConfirmPassword,_that.verificationFieldsSignup,_that.message,_that.requestStatus);case _:
  return null;

}
}

}

/// @nodoc


class _VerifySignupState implements VerifySignupState {
  const _VerifySignupState({required this.name, required this.signupEmail, required this.signupPassword, required this.signupConfirmPassword, final  List<TextFieldInput> verificationFieldsSignup = const [], this.message = '', this.requestStatus = RequestStatus.waiting}): _verificationFieldsSignup = verificationFieldsSignup;
  

@override final  String name;
@override final  String signupEmail;
@override final  String signupPassword;
@override final  String signupConfirmPassword;
 final  List<TextFieldInput> _verificationFieldsSignup;
@override@JsonKey() List<TextFieldInput> get verificationFieldsSignup {
  if (_verificationFieldsSignup is EqualUnmodifiableListView) return _verificationFieldsSignup;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_verificationFieldsSignup);
}

@override@JsonKey() final  String message;
@override@JsonKey() final  RequestStatus requestStatus;

/// Create a copy of VerifySignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifySignupStateCopyWith<_VerifySignupState> get copyWith => __$VerifySignupStateCopyWithImpl<_VerifySignupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifySignupState&&(identical(other.name, name) || other.name == name)&&(identical(other.signupEmail, signupEmail) || other.signupEmail == signupEmail)&&(identical(other.signupPassword, signupPassword) || other.signupPassword == signupPassword)&&(identical(other.signupConfirmPassword, signupConfirmPassword) || other.signupConfirmPassword == signupConfirmPassword)&&const DeepCollectionEquality().equals(other._verificationFieldsSignup, _verificationFieldsSignup)&&(identical(other.message, message) || other.message == message)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus));
}


@override
int get hashCode => Object.hash(runtimeType,name,signupEmail,signupPassword,signupConfirmPassword,const DeepCollectionEquality().hash(_verificationFieldsSignup),message,requestStatus);

@override
String toString() {
  return 'VerifySignupState(name: $name, signupEmail: $signupEmail, signupPassword: $signupPassword, signupConfirmPassword: $signupConfirmPassword, verificationFieldsSignup: $verificationFieldsSignup, message: $message, requestStatus: $requestStatus)';
}


}

/// @nodoc
abstract mixin class _$VerifySignupStateCopyWith<$Res> implements $VerifySignupStateCopyWith<$Res> {
  factory _$VerifySignupStateCopyWith(_VerifySignupState value, $Res Function(_VerifySignupState) _then) = __$VerifySignupStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String signupEmail, String signupPassword, String signupConfirmPassword, List<TextFieldInput> verificationFieldsSignup, String message, RequestStatus requestStatus
});




}
/// @nodoc
class __$VerifySignupStateCopyWithImpl<$Res>
    implements _$VerifySignupStateCopyWith<$Res> {
  __$VerifySignupStateCopyWithImpl(this._self, this._then);

  final _VerifySignupState _self;
  final $Res Function(_VerifySignupState) _then;

/// Create a copy of VerifySignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? signupEmail = null,Object? signupPassword = null,Object? signupConfirmPassword = null,Object? verificationFieldsSignup = null,Object? message = null,Object? requestStatus = null,}) {
  return _then(_VerifySignupState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,signupEmail: null == signupEmail ? _self.signupEmail : signupEmail // ignore: cast_nullable_to_non_nullable
as String,signupPassword: null == signupPassword ? _self.signupPassword : signupPassword // ignore: cast_nullable_to_non_nullable
as String,signupConfirmPassword: null == signupConfirmPassword ? _self.signupConfirmPassword : signupConfirmPassword // ignore: cast_nullable_to_non_nullable
as String,verificationFieldsSignup: null == verificationFieldsSignup ? _self._verificationFieldsSignup : verificationFieldsSignup // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}


}

// dart format on
