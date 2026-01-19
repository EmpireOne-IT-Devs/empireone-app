// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_identity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyIdentityState {

 List<TextFieldInput> get verificationFieldsVerIdentity; RequestStatus get requestStatus; RequestStatus get requestStatusVerifyIdentity; String get message; String get emailForgotPassVal;
/// Create a copy of VerifyIdentityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyIdentityStateCopyWith<VerifyIdentityState> get copyWith => _$VerifyIdentityStateCopyWithImpl<VerifyIdentityState>(this as VerifyIdentityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyIdentityState&&const DeepCollectionEquality().equals(other.verificationFieldsVerIdentity, verificationFieldsVerIdentity)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.requestStatusVerifyIdentity, requestStatusVerifyIdentity) || other.requestStatusVerifyIdentity == requestStatusVerifyIdentity)&&(identical(other.message, message) || other.message == message)&&(identical(other.emailForgotPassVal, emailForgotPassVal) || other.emailForgotPassVal == emailForgotPassVal));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(verificationFieldsVerIdentity),requestStatus,requestStatusVerifyIdentity,message,emailForgotPassVal);

@override
String toString() {
  return 'VerifyIdentityState(verificationFieldsVerIdentity: $verificationFieldsVerIdentity, requestStatus: $requestStatus, requestStatusVerifyIdentity: $requestStatusVerifyIdentity, message: $message, emailForgotPassVal: $emailForgotPassVal)';
}


}

/// @nodoc
abstract mixin class $VerifyIdentityStateCopyWith<$Res>  {
  factory $VerifyIdentityStateCopyWith(VerifyIdentityState value, $Res Function(VerifyIdentityState) _then) = _$VerifyIdentityStateCopyWithImpl;
@useResult
$Res call({
 List<TextFieldInput> verificationFieldsVerIdentity, RequestStatus requestStatus, RequestStatus requestStatusVerifyIdentity, String message, String emailForgotPassVal
});




}
/// @nodoc
class _$VerifyIdentityStateCopyWithImpl<$Res>
    implements $VerifyIdentityStateCopyWith<$Res> {
  _$VerifyIdentityStateCopyWithImpl(this._self, this._then);

  final VerifyIdentityState _self;
  final $Res Function(VerifyIdentityState) _then;

/// Create a copy of VerifyIdentityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationFieldsVerIdentity = null,Object? requestStatus = null,Object? requestStatusVerifyIdentity = null,Object? message = null,Object? emailForgotPassVal = null,}) {
  return _then(_self.copyWith(
verificationFieldsVerIdentity: null == verificationFieldsVerIdentity ? _self.verificationFieldsVerIdentity : verificationFieldsVerIdentity // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestStatusVerifyIdentity: null == requestStatusVerifyIdentity ? _self.requestStatusVerifyIdentity : requestStatusVerifyIdentity // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,emailForgotPassVal: null == emailForgotPassVal ? _self.emailForgotPassVal : emailForgotPassVal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyIdentityState].
extension VerifyIdentityStatePatterns on VerifyIdentityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyIdentityState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyIdentityState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyIdentityState value)  $default,){
final _that = this;
switch (_that) {
case _VerifyIdentityState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyIdentityState value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyIdentityState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TextFieldInput> verificationFieldsVerIdentity,  RequestStatus requestStatus,  RequestStatus requestStatusVerifyIdentity,  String message,  String emailForgotPassVal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyIdentityState() when $default != null:
return $default(_that.verificationFieldsVerIdentity,_that.requestStatus,_that.requestStatusVerifyIdentity,_that.message,_that.emailForgotPassVal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TextFieldInput> verificationFieldsVerIdentity,  RequestStatus requestStatus,  RequestStatus requestStatusVerifyIdentity,  String message,  String emailForgotPassVal)  $default,) {final _that = this;
switch (_that) {
case _VerifyIdentityState():
return $default(_that.verificationFieldsVerIdentity,_that.requestStatus,_that.requestStatusVerifyIdentity,_that.message,_that.emailForgotPassVal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TextFieldInput> verificationFieldsVerIdentity,  RequestStatus requestStatus,  RequestStatus requestStatusVerifyIdentity,  String message,  String emailForgotPassVal)?  $default,) {final _that = this;
switch (_that) {
case _VerifyIdentityState() when $default != null:
return $default(_that.verificationFieldsVerIdentity,_that.requestStatus,_that.requestStatusVerifyIdentity,_that.message,_that.emailForgotPassVal);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyIdentityState implements VerifyIdentityState {
  const _VerifyIdentityState({final  List<TextFieldInput> verificationFieldsVerIdentity = const [], this.requestStatus = RequestStatus.waiting, this.requestStatusVerifyIdentity = RequestStatus.waiting, this.message = '', required this.emailForgotPassVal}): _verificationFieldsVerIdentity = verificationFieldsVerIdentity;
  

 final  List<TextFieldInput> _verificationFieldsVerIdentity;
@override@JsonKey() List<TextFieldInput> get verificationFieldsVerIdentity {
  if (_verificationFieldsVerIdentity is EqualUnmodifiableListView) return _verificationFieldsVerIdentity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_verificationFieldsVerIdentity);
}

@override@JsonKey() final  RequestStatus requestStatus;
@override@JsonKey() final  RequestStatus requestStatusVerifyIdentity;
@override@JsonKey() final  String message;
@override final  String emailForgotPassVal;

/// Create a copy of VerifyIdentityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyIdentityStateCopyWith<_VerifyIdentityState> get copyWith => __$VerifyIdentityStateCopyWithImpl<_VerifyIdentityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyIdentityState&&const DeepCollectionEquality().equals(other._verificationFieldsVerIdentity, _verificationFieldsVerIdentity)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.requestStatusVerifyIdentity, requestStatusVerifyIdentity) || other.requestStatusVerifyIdentity == requestStatusVerifyIdentity)&&(identical(other.message, message) || other.message == message)&&(identical(other.emailForgotPassVal, emailForgotPassVal) || other.emailForgotPassVal == emailForgotPassVal));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_verificationFieldsVerIdentity),requestStatus,requestStatusVerifyIdentity,message,emailForgotPassVal);

@override
String toString() {
  return 'VerifyIdentityState(verificationFieldsVerIdentity: $verificationFieldsVerIdentity, requestStatus: $requestStatus, requestStatusVerifyIdentity: $requestStatusVerifyIdentity, message: $message, emailForgotPassVal: $emailForgotPassVal)';
}


}

/// @nodoc
abstract mixin class _$VerifyIdentityStateCopyWith<$Res> implements $VerifyIdentityStateCopyWith<$Res> {
  factory _$VerifyIdentityStateCopyWith(_VerifyIdentityState value, $Res Function(_VerifyIdentityState) _then) = __$VerifyIdentityStateCopyWithImpl;
@override @useResult
$Res call({
 List<TextFieldInput> verificationFieldsVerIdentity, RequestStatus requestStatus, RequestStatus requestStatusVerifyIdentity, String message, String emailForgotPassVal
});




}
/// @nodoc
class __$VerifyIdentityStateCopyWithImpl<$Res>
    implements _$VerifyIdentityStateCopyWith<$Res> {
  __$VerifyIdentityStateCopyWithImpl(this._self, this._then);

  final _VerifyIdentityState _self;
  final $Res Function(_VerifyIdentityState) _then;

/// Create a copy of VerifyIdentityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationFieldsVerIdentity = null,Object? requestStatus = null,Object? requestStatusVerifyIdentity = null,Object? message = null,Object? emailForgotPassVal = null,}) {
  return _then(_VerifyIdentityState(
verificationFieldsVerIdentity: null == verificationFieldsVerIdentity ? _self._verificationFieldsVerIdentity : verificationFieldsVerIdentity // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestStatusVerifyIdentity: null == requestStatusVerifyIdentity ? _self.requestStatusVerifyIdentity : requestStatusVerifyIdentity // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,emailForgotPassVal: null == emailForgotPassVal ? _self.emailForgotPassVal : emailForgotPassVal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
