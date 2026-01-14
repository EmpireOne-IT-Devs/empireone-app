// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_employee_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEmployeeState {

 TextFieldInput get employeeId; RequestStatus get requestStatus; RequestStatus get requestStatusSendOtp; String get message;
/// Create a copy of LoginEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEmployeeStateCopyWith<LoginEmployeeState> get copyWith => _$LoginEmployeeStateCopyWithImpl<LoginEmployeeState>(this as LoginEmployeeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEmployeeState&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.requestStatusSendOtp, requestStatusSendOtp) || other.requestStatusSendOtp == requestStatusSendOtp)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,employeeId,requestStatus,requestStatusSendOtp,message);

@override
String toString() {
  return 'LoginEmployeeState(employeeId: $employeeId, requestStatus: $requestStatus, requestStatusSendOtp: $requestStatusSendOtp, message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginEmployeeStateCopyWith<$Res>  {
  factory $LoginEmployeeStateCopyWith(LoginEmployeeState value, $Res Function(LoginEmployeeState) _then) = _$LoginEmployeeStateCopyWithImpl;
@useResult
$Res call({
 TextFieldInput employeeId, RequestStatus requestStatus, RequestStatus requestStatusSendOtp, String message
});


$TextFieldInputCopyWith<$Res> get employeeId;

}
/// @nodoc
class _$LoginEmployeeStateCopyWithImpl<$Res>
    implements $LoginEmployeeStateCopyWith<$Res> {
  _$LoginEmployeeStateCopyWithImpl(this._self, this._then);

  final LoginEmployeeState _self;
  final $Res Function(LoginEmployeeState) _then;

/// Create a copy of LoginEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = null,Object? requestStatus = null,Object? requestStatusSendOtp = null,Object? message = null,}) {
  return _then(_self.copyWith(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as TextFieldInput,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestStatusSendOtp: null == requestStatusSendOtp ? _self.requestStatusSendOtp : requestStatusSendOtp // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LoginEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get employeeId {
  
  return $TextFieldInputCopyWith<$Res>(_self.employeeId, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginEmployeeState].
extension LoginEmployeeStatePatterns on LoginEmployeeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginEmployeeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginEmployeeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginEmployeeState value)  $default,){
final _that = this;
switch (_that) {
case _LoginEmployeeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginEmployeeState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginEmployeeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFieldInput employeeId,  RequestStatus requestStatus,  RequestStatus requestStatusSendOtp,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginEmployeeState() when $default != null:
return $default(_that.employeeId,_that.requestStatus,_that.requestStatusSendOtp,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFieldInput employeeId,  RequestStatus requestStatus,  RequestStatus requestStatusSendOtp,  String message)  $default,) {final _that = this;
switch (_that) {
case _LoginEmployeeState():
return $default(_that.employeeId,_that.requestStatus,_that.requestStatusSendOtp,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFieldInput employeeId,  RequestStatus requestStatus,  RequestStatus requestStatusSendOtp,  String message)?  $default,) {final _that = this;
switch (_that) {
case _LoginEmployeeState() when $default != null:
return $default(_that.employeeId,_that.requestStatus,_that.requestStatusSendOtp,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoginEmployeeState implements LoginEmployeeState {
  const _LoginEmployeeState({this.employeeId = const TextFieldInput(errorType: ErrorType.empty), this.requestStatus = RequestStatus.waiting, this.requestStatusSendOtp = RequestStatus.waiting, this.message = ''});
  

@override@JsonKey() final  TextFieldInput employeeId;
@override@JsonKey() final  RequestStatus requestStatus;
@override@JsonKey() final  RequestStatus requestStatusSendOtp;
@override@JsonKey() final  String message;

/// Create a copy of LoginEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginEmployeeStateCopyWith<_LoginEmployeeState> get copyWith => __$LoginEmployeeStateCopyWithImpl<_LoginEmployeeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginEmployeeState&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.requestStatusSendOtp, requestStatusSendOtp) || other.requestStatusSendOtp == requestStatusSendOtp)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,employeeId,requestStatus,requestStatusSendOtp,message);

@override
String toString() {
  return 'LoginEmployeeState(employeeId: $employeeId, requestStatus: $requestStatus, requestStatusSendOtp: $requestStatusSendOtp, message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoginEmployeeStateCopyWith<$Res> implements $LoginEmployeeStateCopyWith<$Res> {
  factory _$LoginEmployeeStateCopyWith(_LoginEmployeeState value, $Res Function(_LoginEmployeeState) _then) = __$LoginEmployeeStateCopyWithImpl;
@override @useResult
$Res call({
 TextFieldInput employeeId, RequestStatus requestStatus, RequestStatus requestStatusSendOtp, String message
});


@override $TextFieldInputCopyWith<$Res> get employeeId;

}
/// @nodoc
class __$LoginEmployeeStateCopyWithImpl<$Res>
    implements _$LoginEmployeeStateCopyWith<$Res> {
  __$LoginEmployeeStateCopyWithImpl(this._self, this._then);

  final _LoginEmployeeState _self;
  final $Res Function(_LoginEmployeeState) _then;

/// Create a copy of LoginEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = null,Object? requestStatus = null,Object? requestStatusSendOtp = null,Object? message = null,}) {
  return _then(_LoginEmployeeState(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as TextFieldInput,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestStatusSendOtp: null == requestStatusSendOtp ? _self.requestStatusSendOtp : requestStatusSendOtp // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get employeeId {
  
  return $TextFieldInputCopyWith<$Res>(_self.employeeId, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}
}

// dart format on
