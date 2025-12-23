// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordState {

 TextFieldInput get resetNewPassword; TextFieldInput get resetConfirmNewPassword;
/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordStateCopyWith<ResetPasswordState> get copyWith => _$ResetPasswordStateCopyWithImpl<ResetPasswordState>(this as ResetPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordState&&(identical(other.resetNewPassword, resetNewPassword) || other.resetNewPassword == resetNewPassword)&&(identical(other.resetConfirmNewPassword, resetConfirmNewPassword) || other.resetConfirmNewPassword == resetConfirmNewPassword));
}


@override
int get hashCode => Object.hash(runtimeType,resetNewPassword,resetConfirmNewPassword);

@override
String toString() {
  return 'ResetPasswordState(resetNewPassword: $resetNewPassword, resetConfirmNewPassword: $resetConfirmNewPassword)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordStateCopyWith<$Res>  {
  factory $ResetPasswordStateCopyWith(ResetPasswordState value, $Res Function(ResetPasswordState) _then) = _$ResetPasswordStateCopyWithImpl;
@useResult
$Res call({
 TextFieldInput resetNewPassword, TextFieldInput resetConfirmNewPassword
});


$TextFieldInputCopyWith<$Res> get resetNewPassword;$TextFieldInputCopyWith<$Res> get resetConfirmNewPassword;

}
/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final ResetPasswordState _self;
  final $Res Function(ResetPasswordState) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resetNewPassword = null,Object? resetConfirmNewPassword = null,}) {
  return _then(_self.copyWith(
resetNewPassword: null == resetNewPassword ? _self.resetNewPassword : resetNewPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,resetConfirmNewPassword: null == resetConfirmNewPassword ? _self.resetConfirmNewPassword : resetConfirmNewPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,
  ));
}
/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get resetNewPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.resetNewPassword, (value) {
    return _then(_self.copyWith(resetNewPassword: value));
  });
}/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get resetConfirmNewPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.resetConfirmNewPassword, (value) {
    return _then(_self.copyWith(resetConfirmNewPassword: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResetPasswordState].
extension ResetPasswordStatePatterns on ResetPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFieldInput resetNewPassword,  TextFieldInput resetConfirmNewPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
return $default(_that.resetNewPassword,_that.resetConfirmNewPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFieldInput resetNewPassword,  TextFieldInput resetConfirmNewPassword)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordState():
return $default(_that.resetNewPassword,_that.resetConfirmNewPassword);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFieldInput resetNewPassword,  TextFieldInput resetConfirmNewPassword)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
return $default(_that.resetNewPassword,_that.resetConfirmNewPassword);case _:
  return null;

}
}

}

/// @nodoc


class _ResetPasswordState implements ResetPasswordState {
  const _ResetPasswordState({this.resetNewPassword = const TextFieldInput(errorType: ErrorType.empty), this.resetConfirmNewPassword = const TextFieldInput(errorType: ErrorType.empty)});
  

@override@JsonKey() final  TextFieldInput resetNewPassword;
@override@JsonKey() final  TextFieldInput resetConfirmNewPassword;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith => __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordState&&(identical(other.resetNewPassword, resetNewPassword) || other.resetNewPassword == resetNewPassword)&&(identical(other.resetConfirmNewPassword, resetConfirmNewPassword) || other.resetConfirmNewPassword == resetConfirmNewPassword));
}


@override
int get hashCode => Object.hash(runtimeType,resetNewPassword,resetConfirmNewPassword);

@override
String toString() {
  return 'ResetPasswordState(resetNewPassword: $resetNewPassword, resetConfirmNewPassword: $resetConfirmNewPassword)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordStateCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(_ResetPasswordState value, $Res Function(_ResetPasswordState) _then) = __$ResetPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 TextFieldInput resetNewPassword, TextFieldInput resetConfirmNewPassword
});


@override $TextFieldInputCopyWith<$Res> get resetNewPassword;@override $TextFieldInputCopyWith<$Res> get resetConfirmNewPassword;

}
/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final _ResetPasswordState _self;
  final $Res Function(_ResetPasswordState) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resetNewPassword = null,Object? resetConfirmNewPassword = null,}) {
  return _then(_ResetPasswordState(
resetNewPassword: null == resetNewPassword ? _self.resetNewPassword : resetNewPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,resetConfirmNewPassword: null == resetConfirmNewPassword ? _self.resetConfirmNewPassword : resetConfirmNewPassword // ignore: cast_nullable_to_non_nullable
as TextFieldInput,
  ));
}

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get resetNewPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.resetNewPassword, (value) {
    return _then(_self.copyWith(resetNewPassword: value));
  });
}/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get resetConfirmNewPassword {
  
  return $TextFieldInputCopyWith<$Res>(_self.resetConfirmNewPassword, (value) {
    return _then(_self.copyWith(resetConfirmNewPassword: value));
  });
}
}

// dart format on
