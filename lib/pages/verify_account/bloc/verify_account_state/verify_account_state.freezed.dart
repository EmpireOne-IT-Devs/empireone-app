// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyAccountState {

 List<TextFieldInput> get verificationFields; TextFieldInput get employeeId; RequestStatus get requestStatus; String get message;
/// Create a copy of VerifyAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyAccountStateCopyWith<VerifyAccountState> get copyWith => _$VerifyAccountStateCopyWithImpl<VerifyAccountState>(this as VerifyAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyAccountState&&const DeepCollectionEquality().equals(other.verificationFields, verificationFields)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(verificationFields),employeeId,requestStatus,message);

@override
String toString() {
  return 'VerifyAccountState(verificationFields: $verificationFields, employeeId: $employeeId, requestStatus: $requestStatus, message: $message)';
}


}

/// @nodoc
abstract mixin class $VerifyAccountStateCopyWith<$Res>  {
  factory $VerifyAccountStateCopyWith(VerifyAccountState value, $Res Function(VerifyAccountState) _then) = _$VerifyAccountStateCopyWithImpl;
@useResult
$Res call({
 List<TextFieldInput> verificationFields, TextFieldInput employeeId, RequestStatus requestStatus, String message
});


$TextFieldInputCopyWith<$Res> get employeeId;

}
/// @nodoc
class _$VerifyAccountStateCopyWithImpl<$Res>
    implements $VerifyAccountStateCopyWith<$Res> {
  _$VerifyAccountStateCopyWithImpl(this._self, this._then);

  final VerifyAccountState _self;
  final $Res Function(VerifyAccountState) _then;

/// Create a copy of VerifyAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationFields = null,Object? employeeId = null,Object? requestStatus = null,Object? message = null,}) {
  return _then(_self.copyWith(
verificationFields: null == verificationFields ? _self.verificationFields : verificationFields // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as TextFieldInput,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of VerifyAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get employeeId {
  
  return $TextFieldInputCopyWith<$Res>(_self.employeeId, (value) {
    return _then(_self.copyWith(employeeId: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyAccountState].
extension VerifyAccountStatePatterns on VerifyAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyAccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyAccountState value)  $default,){
final _that = this;
switch (_that) {
case _VerifyAccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyAccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TextFieldInput> verificationFields,  TextFieldInput employeeId,  RequestStatus requestStatus,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyAccountState() when $default != null:
return $default(_that.verificationFields,_that.employeeId,_that.requestStatus,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TextFieldInput> verificationFields,  TextFieldInput employeeId,  RequestStatus requestStatus,  String message)  $default,) {final _that = this;
switch (_that) {
case _VerifyAccountState():
return $default(_that.verificationFields,_that.employeeId,_that.requestStatus,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TextFieldInput> verificationFields,  TextFieldInput employeeId,  RequestStatus requestStatus,  String message)?  $default,) {final _that = this;
switch (_that) {
case _VerifyAccountState() when $default != null:
return $default(_that.verificationFields,_that.employeeId,_that.requestStatus,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyAccountState implements VerifyAccountState {
  const _VerifyAccountState({final  List<TextFieldInput> verificationFields = const [], this.employeeId = const TextFieldInput(errorType: ErrorType.empty), this.requestStatus = RequestStatus.waiting, this.message = ''}): _verificationFields = verificationFields;
  

 final  List<TextFieldInput> _verificationFields;
@override@JsonKey() List<TextFieldInput> get verificationFields {
  if (_verificationFields is EqualUnmodifiableListView) return _verificationFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_verificationFields);
}

@override@JsonKey() final  TextFieldInput employeeId;
@override@JsonKey() final  RequestStatus requestStatus;
@override@JsonKey() final  String message;

/// Create a copy of VerifyAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyAccountStateCopyWith<_VerifyAccountState> get copyWith => __$VerifyAccountStateCopyWithImpl<_VerifyAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyAccountState&&const DeepCollectionEquality().equals(other._verificationFields, _verificationFields)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_verificationFields),employeeId,requestStatus,message);

@override
String toString() {
  return 'VerifyAccountState(verificationFields: $verificationFields, employeeId: $employeeId, requestStatus: $requestStatus, message: $message)';
}


}

/// @nodoc
abstract mixin class _$VerifyAccountStateCopyWith<$Res> implements $VerifyAccountStateCopyWith<$Res> {
  factory _$VerifyAccountStateCopyWith(_VerifyAccountState value, $Res Function(_VerifyAccountState) _then) = __$VerifyAccountStateCopyWithImpl;
@override @useResult
$Res call({
 List<TextFieldInput> verificationFields, TextFieldInput employeeId, RequestStatus requestStatus, String message
});


@override $TextFieldInputCopyWith<$Res> get employeeId;

}
/// @nodoc
class __$VerifyAccountStateCopyWithImpl<$Res>
    implements _$VerifyAccountStateCopyWith<$Res> {
  __$VerifyAccountStateCopyWithImpl(this._self, this._then);

  final _VerifyAccountState _self;
  final $Res Function(_VerifyAccountState) _then;

/// Create a copy of VerifyAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationFields = null,Object? employeeId = null,Object? requestStatus = null,Object? message = null,}) {
  return _then(_VerifyAccountState(
verificationFields: null == verificationFields ? _self._verificationFields : verificationFields // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as TextFieldInput,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of VerifyAccountState
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
