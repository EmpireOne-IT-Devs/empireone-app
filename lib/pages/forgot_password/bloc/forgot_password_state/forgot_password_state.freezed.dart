// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordState {

 TextFieldInput get emailForgotPassVal; RequestStatus get requestStatus; String get message;
/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith => _$ForgotPasswordStateCopyWithImpl<ForgotPasswordState>(this as ForgotPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState&&(identical(other.emailForgotPassVal, emailForgotPassVal) || other.emailForgotPassVal == emailForgotPassVal)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,emailForgotPassVal,requestStatus,message);

@override
String toString() {
  return 'ForgotPasswordState(emailForgotPassVal: $emailForgotPassVal, requestStatus: $requestStatus, message: $message)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordStateCopyWith<$Res>  {
  factory $ForgotPasswordStateCopyWith(ForgotPasswordState value, $Res Function(ForgotPasswordState) _then) = _$ForgotPasswordStateCopyWithImpl;
@useResult
$Res call({
 TextFieldInput emailForgotPassVal, RequestStatus requestStatus, String message
});


$TextFieldInputCopyWith<$Res> get emailForgotPassVal;

}
/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordState _self;
  final $Res Function(ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emailForgotPassVal = null,Object? requestStatus = null,Object? message = null,}) {
  return _then(_self.copyWith(
emailForgotPassVal: null == emailForgotPassVal ? _self.emailForgotPassVal : emailForgotPassVal // ignore: cast_nullable_to_non_nullable
as TextFieldInput,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get emailForgotPassVal {
  
  return $TextFieldInputCopyWith<$Res>(_self.emailForgotPassVal, (value) {
    return _then(_self.copyWith(emailForgotPassVal: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForgotPasswordState].
extension ForgotPasswordStatePatterns on ForgotPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFieldInput emailForgotPassVal,  RequestStatus requestStatus,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.emailForgotPassVal,_that.requestStatus,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFieldInput emailForgotPassVal,  RequestStatus requestStatus,  String message)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState():
return $default(_that.emailForgotPassVal,_that.requestStatus,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFieldInput emailForgotPassVal,  RequestStatus requestStatus,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.emailForgotPassVal,_that.requestStatus,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotPasswordState implements ForgotPasswordState {
  const _ForgotPasswordState({this.emailForgotPassVal = const TextFieldInput(errorType: ErrorType.empty), this.requestStatus = RequestStatus.waiting, this.message = ''});
  

@override@JsonKey() final  TextFieldInput emailForgotPassVal;
@override@JsonKey() final  RequestStatus requestStatus;
@override@JsonKey() final  String message;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith => __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordState&&(identical(other.emailForgotPassVal, emailForgotPassVal) || other.emailForgotPassVal == emailForgotPassVal)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,emailForgotPassVal,requestStatus,message);

@override
String toString() {
  return 'ForgotPasswordState(emailForgotPassVal: $emailForgotPassVal, requestStatus: $requestStatus, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordStateCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value, $Res Function(_ForgotPasswordState) _then) = __$ForgotPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 TextFieldInput emailForgotPassVal, RequestStatus requestStatus, String message
});


@override $TextFieldInputCopyWith<$Res> get emailForgotPassVal;

}
/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgotPasswordState _self;
  final $Res Function(_ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emailForgotPassVal = null,Object? requestStatus = null,Object? message = null,}) {
  return _then(_ForgotPasswordState(
emailForgotPassVal: null == emailForgotPassVal ? _self.emailForgotPassVal : emailForgotPassVal // ignore: cast_nullable_to_non_nullable
as TextFieldInput,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get emailForgotPassVal {
  
  return $TextFieldInputCopyWith<$Res>(_self.emailForgotPassVal, (value) {
    return _then(_self.copyWith(emailForgotPassVal: value));
  });
}
}

// dart format on
