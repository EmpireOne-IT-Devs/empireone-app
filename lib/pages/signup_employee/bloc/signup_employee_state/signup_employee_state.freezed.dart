// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_employee_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupEmployeeState {

 TextFieldInput get employeeId; TextFieldInput get signupEmployeePassword; TextFieldInput get signupEmployeeConfirmPassword; bool get isChecked;
/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupEmployeeStateCopyWith<SignupEmployeeState> get copyWith => _$SignupEmployeeStateCopyWithImpl<SignupEmployeeState>(this as SignupEmployeeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEmployeeState&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.signupEmployeePassword, signupEmployeePassword) || other.signupEmployeePassword == signupEmployeePassword)&&(identical(other.signupEmployeeConfirmPassword, signupEmployeeConfirmPassword) || other.signupEmployeeConfirmPassword == signupEmployeeConfirmPassword)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked));
}


@override
int get hashCode => Object.hash(runtimeType,employeeId,signupEmployeePassword,signupEmployeeConfirmPassword,isChecked);

@override
String toString() {
  return 'SignupEmployeeState(employeeId: $employeeId, signupEmployeePassword: $signupEmployeePassword, signupEmployeeConfirmPassword: $signupEmployeeConfirmPassword, isChecked: $isChecked)';
}


}

/// @nodoc
abstract mixin class $SignupEmployeeStateCopyWith<$Res>  {
  factory $SignupEmployeeStateCopyWith(SignupEmployeeState value, $Res Function(SignupEmployeeState) _then) = _$SignupEmployeeStateCopyWithImpl;
@useResult
$Res call({
 TextFieldInput employeeId, TextFieldInput signupEmployeePassword, TextFieldInput signupEmployeeConfirmPassword, bool isChecked
});


$TextFieldInputCopyWith<$Res> get employeeId;$TextFieldInputCopyWith<$Res> get signupEmployeePassword;$TextFieldInputCopyWith<$Res> get signupEmployeeConfirmPassword;

}
/// @nodoc
class _$SignupEmployeeStateCopyWithImpl<$Res>
    implements $SignupEmployeeStateCopyWith<$Res> {
  _$SignupEmployeeStateCopyWithImpl(this._self, this._then);

  final SignupEmployeeState _self;
  final $Res Function(SignupEmployeeState) _then;

/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = null,Object? signupEmployeePassword = null,Object? signupEmployeeConfirmPassword = null,Object? isChecked = null,}) {
  return _then(_self.copyWith(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupEmployeePassword: null == signupEmployeePassword ? _self.signupEmployeePassword : signupEmployeePassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupEmployeeConfirmPassword: null == signupEmployeeConfirmPassword ? _self.signupEmployeeConfirmPassword : signupEmployeeConfirmPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get employeeId {
  
  return $TextFieldInputCopyWith<$Res>(_self.employeeId, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupEmployeePassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupEmployeePassword, (value) {
    return _then(_self.copyWith(signupEmployeePassword: value));
  });
}/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupEmployeeConfirmPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupEmployeeConfirmPassword, (value) {
    return _then(_self.copyWith(signupEmployeeConfirmPassword: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignupEmployeeState].
extension SignupEmployeeStatePatterns on SignupEmployeeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupEmployeeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupEmployeeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupEmployeeState value)  $default,){
final _that = this;
switch (_that) {
case _SignupEmployeeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupEmployeeState value)?  $default,){
final _that = this;
switch (_that) {
case _SignupEmployeeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFieldInput employeeId,  TextFieldInput signupEmployeePassword,  TextFieldInput signupEmployeeConfirmPassword,  bool isChecked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupEmployeeState() when $default != null:
return $default(_that.employeeId,_that.signupEmployeePassword,_that.signupEmployeeConfirmPassword,_that.isChecked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFieldInput employeeId,  TextFieldInput signupEmployeePassword,  TextFieldInput signupEmployeeConfirmPassword,  bool isChecked)  $default,) {final _that = this;
switch (_that) {
case _SignupEmployeeState():
return $default(_that.employeeId,_that.signupEmployeePassword,_that.signupEmployeeConfirmPassword,_that.isChecked);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFieldInput employeeId,  TextFieldInput signupEmployeePassword,  TextFieldInput signupEmployeeConfirmPassword,  bool isChecked)?  $default,) {final _that = this;
switch (_that) {
case _SignupEmployeeState() when $default != null:
return $default(_that.employeeId,_that.signupEmployeePassword,_that.signupEmployeeConfirmPassword,_that.isChecked);case _:
  return null;

}
}

}

/// @nodoc


class _SignupEmployeeState implements SignupEmployeeState {
  const _SignupEmployeeState({this.employeeId = const TextFieldInput(errorType: ErrorType.empty), this.signupEmployeePassword = const TextFieldInput(errorType: ErrorType.empty), this.signupEmployeeConfirmPassword = const TextFieldInput(errorType: ErrorType.empty), this.isChecked = false});
  

@override@JsonKey() final  TextFieldInput employeeId;
@override@JsonKey() final  TextFieldInput signupEmployeePassword;
@override@JsonKey() final  TextFieldInput signupEmployeeConfirmPassword;
@override@JsonKey() final  bool isChecked;

/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupEmployeeStateCopyWith<_SignupEmployeeState> get copyWith => __$SignupEmployeeStateCopyWithImpl<_SignupEmployeeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupEmployeeState&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.signupEmployeePassword, signupEmployeePassword) || other.signupEmployeePassword == signupEmployeePassword)&&(identical(other.signupEmployeeConfirmPassword, signupEmployeeConfirmPassword) || other.signupEmployeeConfirmPassword == signupEmployeeConfirmPassword)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked));
}


@override
int get hashCode => Object.hash(runtimeType,employeeId,signupEmployeePassword,signupEmployeeConfirmPassword,isChecked);

@override
String toString() {
  return 'SignupEmployeeState(employeeId: $employeeId, signupEmployeePassword: $signupEmployeePassword, signupEmployeeConfirmPassword: $signupEmployeeConfirmPassword, isChecked: $isChecked)';
}


}

/// @nodoc
abstract mixin class _$SignupEmployeeStateCopyWith<$Res> implements $SignupEmployeeStateCopyWith<$Res> {
  factory _$SignupEmployeeStateCopyWith(_SignupEmployeeState value, $Res Function(_SignupEmployeeState) _then) = __$SignupEmployeeStateCopyWithImpl;
@override @useResult
$Res call({
 TextFieldInput employeeId, TextFieldInput signupEmployeePassword, TextFieldInput signupEmployeeConfirmPassword, bool isChecked
});


@override $TextFieldInputCopyWith<$Res> get employeeId;@override $TextFieldInputCopyWith<$Res> get signupEmployeePassword;@override $TextFieldInputCopyWith<$Res> get signupEmployeeConfirmPassword;

}
/// @nodoc
class __$SignupEmployeeStateCopyWithImpl<$Res>
    implements _$SignupEmployeeStateCopyWith<$Res> {
  __$SignupEmployeeStateCopyWithImpl(this._self, this._then);

  final _SignupEmployeeState _self;
  final $Res Function(_SignupEmployeeState) _then;

/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = null,Object? signupEmployeePassword = null,Object? signupEmployeeConfirmPassword = null,Object? isChecked = null,}) {
  return _then(_SignupEmployeeState(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupEmployeePassword: null == signupEmployeePassword ? _self.signupEmployeePassword : signupEmployeePassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,signupEmployeeConfirmPassword: null == signupEmployeeConfirmPassword ? _self.signupEmployeeConfirmPassword : signupEmployeeConfirmPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get employeeId {
  
  return $TextFieldInputCopyWith<$Res>(_self.employeeId, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupEmployeePassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupEmployeePassword, (value) {
    return _then(_self.copyWith(signupEmployeePassword: value));
  });
}/// Create a copy of SignupEmployeeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get signupEmployeeConfirmPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.signupEmployeeConfirmPassword, (value) {
    return _then(_self.copyWith(signupEmployeeConfirmPassword: value));
  });
}
}

// dart format on
