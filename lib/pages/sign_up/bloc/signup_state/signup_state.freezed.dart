// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState {

 TextFieldInput get name; TextFieldInput get signupEmail; TextFieldInput get signupPassword; TextFieldInput get signupConfirmPassword; bool get isChecked; String get message; RequestStatus get requestStatus; RequestStatus get googleSignupRequestStatus;
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStateCopyWith<SignupState> get copyWith => _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState&&(identical(other.name, name) || other.name == name)&&(identical(other.signupEmail, signupEmail) || other.signupEmail == signupEmail)&&(identical(other.signupPassword, signupPassword) || other.signupPassword == signupPassword)&&(identical(other.signupConfirmPassword, signupConfirmPassword) || other.signupConfirmPassword == signupConfirmPassword)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.message, message) || other.message == message)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.googleSignupRequestStatus, googleSignupRequestStatus) || other.googleSignupRequestStatus == googleSignupRequestStatus));
}


@override
int get hashCode => Object.hash(runtimeType,name,signupEmail,signupPassword,signupConfirmPassword,isChecked,message,requestStatus,googleSignupRequestStatus);

@override
String toString() {
  return 'SignupState(name: $name, signupEmail: $signupEmail, signupPassword: $signupPassword, signupConfirmPassword: $signupConfirmPassword, isChecked: $isChecked, message: $message, requestStatus: $requestStatus, googleSignupRequestStatus: $googleSignupRequestStatus)';
}


}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res>  {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) _then) = _$SignupStateCopyWithImpl;
@useResult
$Res call({
 TextFieldInput name, TextFieldInput signupEmail, TextFieldInput signupPassword, TextFieldInput signupConfirmPassword, bool isChecked, String message, RequestStatus requestStatus, RequestStatus googleSignupRequestStatus
});


$TextFieldInputCopyWith<$Res> get name;$TextFieldInputCopyWith<$Res> get signupEmail;$TextFieldInputCopyWith<$Res> get signupPassword;$TextFieldInputCopyWith<$Res> get signupConfirmPassword;

}
/// @nodoc
class _$SignupStateCopyWithImpl<$Res>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? signupEmail = null,Object? signupPassword = null,Object? signupConfirmPassword = null,Object? isChecked = null,Object? message = null,Object? requestStatus = null,Object? googleSignupRequestStatus = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupEmail: null == signupEmail ? _self.signupEmail : signupEmail // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupPassword: null == signupPassword ? _self.signupPassword : signupPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupConfirmPassword: null == signupConfirmPassword ? _self.signupConfirmPassword : signupConfirmPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,googleSignupRequestStatus: null == googleSignupRequestStatus ? _self.googleSignupRequestStatus : googleSignupRequestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get name {
  
  return $TextFieldInputCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupEmail {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupEmail, (value) {
    return _then(_self.copyWith(signupEmail: value));
  });
}/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupPassword, (value) {
    return _then(_self.copyWith(signupPassword: value));
  });
}/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupConfirmPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupConfirmPassword, (value) {
    return _then(_self.copyWith(signupConfirmPassword: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupState value)  $default,){
final _that = this;
switch (_that) {
case _SignupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupState value)?  $default,){
final _that = this;
switch (_that) {
case _SignupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFieldInput name,  TextFieldInput signupEmail,  TextFieldInput signupPassword,  TextFieldInput signupConfirmPassword,  bool isChecked,  String message,  RequestStatus requestStatus,  RequestStatus googleSignupRequestStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupState() when $default != null:
return $default(_that.name,_that.signupEmail,_that.signupPassword,_that.signupConfirmPassword,_that.isChecked,_that.message,_that.requestStatus,_that.googleSignupRequestStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFieldInput name,  TextFieldInput signupEmail,  TextFieldInput signupPassword,  TextFieldInput signupConfirmPassword,  bool isChecked,  String message,  RequestStatus requestStatus,  RequestStatus googleSignupRequestStatus)  $default,) {final _that = this;
switch (_that) {
case _SignupState():
return $default(_that.name,_that.signupEmail,_that.signupPassword,_that.signupConfirmPassword,_that.isChecked,_that.message,_that.requestStatus,_that.googleSignupRequestStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFieldInput name,  TextFieldInput signupEmail,  TextFieldInput signupPassword,  TextFieldInput signupConfirmPassword,  bool isChecked,  String message,  RequestStatus requestStatus,  RequestStatus googleSignupRequestStatus)?  $default,) {final _that = this;
switch (_that) {
case _SignupState() when $default != null:
return $default(_that.name,_that.signupEmail,_that.signupPassword,_that.signupConfirmPassword,_that.isChecked,_that.message,_that.requestStatus,_that.googleSignupRequestStatus);case _:
  return null;

}
}

}

/// @nodoc


class _SignupState implements SignupState {
  const _SignupState({this.name = const TextFieldInput(errorType: ErrorType.empty), this.signupEmail = const TextFieldInput(errorType: ErrorType.empty), this.signupPassword = const TextFieldInput(errorType: ErrorType.empty), this.signupConfirmPassword = const TextFieldInput(errorType: ErrorType.empty), this.isChecked = false, this.message = '', this.requestStatus = RequestStatus.waiting, this.googleSignupRequestStatus = RequestStatus.waiting});
  

@override@JsonKey() final  TextFieldInput name;
@override@JsonKey() final  TextFieldInput signupEmail;
@override@JsonKey() final  TextFieldInput signupPassword;
@override@JsonKey() final  TextFieldInput signupConfirmPassword;
@override@JsonKey() final  bool isChecked;
@override@JsonKey() final  String message;
@override@JsonKey() final  RequestStatus requestStatus;
@override@JsonKey() final  RequestStatus googleSignupRequestStatus;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupStateCopyWith<_SignupState> get copyWith => __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupState&&(identical(other.name, name) || other.name == name)&&(identical(other.signupEmail, signupEmail) || other.signupEmail == signupEmail)&&(identical(other.signupPassword, signupPassword) || other.signupPassword == signupPassword)&&(identical(other.signupConfirmPassword, signupConfirmPassword) || other.signupConfirmPassword == signupConfirmPassword)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.message, message) || other.message == message)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.googleSignupRequestStatus, googleSignupRequestStatus) || other.googleSignupRequestStatus == googleSignupRequestStatus));
}


@override
int get hashCode => Object.hash(runtimeType,name,signupEmail,signupPassword,signupConfirmPassword,isChecked,message,requestStatus,googleSignupRequestStatus);

@override
String toString() {
  return 'SignupState(name: $name, signupEmail: $signupEmail, signupPassword: $signupPassword, signupConfirmPassword: $signupConfirmPassword, isChecked: $isChecked, message: $message, requestStatus: $requestStatus, googleSignupRequestStatus: $googleSignupRequestStatus)';
}


}

/// @nodoc
abstract mixin class _$SignupStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(_SignupState value, $Res Function(_SignupState) _then) = __$SignupStateCopyWithImpl;
@override @useResult
$Res call({
 TextFieldInput name, TextFieldInput signupEmail, TextFieldInput signupPassword, TextFieldInput signupConfirmPassword, bool isChecked, String message, RequestStatus requestStatus, RequestStatus googleSignupRequestStatus
});


@override $TextFieldInputCopyWith<$Res> get name;@override $TextFieldInputCopyWith<$Res> get signupEmail;@override $TextFieldInputCopyWith<$Res> get signupPassword;@override $TextFieldInputCopyWith<$Res> get signupConfirmPassword;

}
/// @nodoc
class __$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(this._self, this._then);

  final _SignupState _self;
  final $Res Function(_SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? signupEmail = null,Object? signupPassword = null,Object? signupConfirmPassword = null,Object? isChecked = null,Object? message = null,Object? requestStatus = null,Object? googleSignupRequestStatus = null,}) {
  return _then(_SignupState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupEmail: null == signupEmail ? _self.signupEmail : signupEmail // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupPassword: null == signupPassword ? _self.signupPassword : signupPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupConfirmPassword: null == signupConfirmPassword ? _self.signupConfirmPassword : signupConfirmPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,googleSignupRequestStatus: null == googleSignupRequestStatus ? _self.googleSignupRequestStatus : googleSignupRequestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get name {
  
  return $TextFieldInputCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupEmail {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupEmail, (value) {
    return _then(_self.copyWith(signupEmail: value));
  });
}/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupPassword, (value) {
    return _then(_self.copyWith(signupPassword: value));
  });
}/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupConfirmPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupConfirmPassword, (value) {
    return _then(_self.copyWith(signupConfirmPassword: value));
  });
}
}

// dart format on
