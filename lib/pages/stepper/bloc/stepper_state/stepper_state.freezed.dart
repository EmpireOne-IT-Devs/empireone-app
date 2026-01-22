// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stepper_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StepperState {

 List<TextFieldInput> get verificationFieldsStepper; TextFieldInput get employeeIdStepper; int get currentStep; bool get isCheckedTermsPriv; RequestStatus get requestStatus; RequestStatus get requestStatusSendOtpStepper;
/// Create a copy of StepperState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepperStateCopyWith<StepperState> get copyWith => _$StepperStateCopyWithImpl<StepperState>(this as StepperState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepperState&&const DeepCollectionEquality().equals(other.verificationFieldsStepper, verificationFieldsStepper)&&(identical(other.employeeIdStepper, employeeIdStepper) || other.employeeIdStepper == employeeIdStepper)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.isCheckedTermsPriv, isCheckedTermsPriv) || other.isCheckedTermsPriv == isCheckedTermsPriv)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.requestStatusSendOtpStepper, requestStatusSendOtpStepper) || other.requestStatusSendOtpStepper == requestStatusSendOtpStepper));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(verificationFieldsStepper),employeeIdStepper,currentStep,isCheckedTermsPriv,requestStatus,requestStatusSendOtpStepper);

@override
String toString() {
  return 'StepperState(verificationFieldsStepper: $verificationFieldsStepper, employeeIdStepper: $employeeIdStepper, currentStep: $currentStep, isCheckedTermsPriv: $isCheckedTermsPriv, requestStatus: $requestStatus, requestStatusSendOtpStepper: $requestStatusSendOtpStepper)';
}


}

/// @nodoc
abstract mixin class $StepperStateCopyWith<$Res>  {
  factory $StepperStateCopyWith(StepperState value, $Res Function(StepperState) _then) = _$StepperStateCopyWithImpl;
@useResult
$Res call({
 List<TextFieldInput> verificationFieldsStepper, TextFieldInput employeeIdStepper, int currentStep, bool isCheckedTermsPriv, RequestStatus requestStatus, RequestStatus requestStatusSendOtpStepper
});


$TextFieldInputCopyWith<$Res> get employeeIdStepper;

}
/// @nodoc
class _$StepperStateCopyWithImpl<$Res>
    implements $StepperStateCopyWith<$Res> {
  _$StepperStateCopyWithImpl(this._self, this._then);

  final StepperState _self;
  final $Res Function(StepperState) _then;

/// Create a copy of StepperState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationFieldsStepper = null,Object? employeeIdStepper = null,Object? currentStep = null,Object? isCheckedTermsPriv = null,Object? requestStatus = null,Object? requestStatusSendOtpStepper = null,}) {
  return _then(_self.copyWith(
verificationFieldsStepper: null == verificationFieldsStepper ? _self.verificationFieldsStepper : verificationFieldsStepper // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,employeeIdStepper: null == employeeIdStepper ? _self.employeeIdStepper : employeeIdStepper // ignore: cast_nullable_to_non_nullable
as TextFieldInput,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,isCheckedTermsPriv: null == isCheckedTermsPriv ? _self.isCheckedTermsPriv : isCheckedTermsPriv // ignore: cast_nullable_to_non_nullable
as bool,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestStatusSendOtpStepper: null == requestStatusSendOtpStepper ? _self.requestStatusSendOtpStepper : requestStatusSendOtpStepper // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}
/// Create a copy of StepperState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get employeeIdStepper {
  
  return $TextFieldInputCopyWith<$Res>(_self.employeeIdStepper, (value) {
    return _then(_self.copyWith(employeeIdStepper: value));
  });
}
}


/// Adds pattern-matching-related methods to [StepperState].
extension StepperStatePatterns on StepperState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepperState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepperState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepperState value)  $default,){
final _that = this;
switch (_that) {
case _StepperState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepperState value)?  $default,){
final _that = this;
switch (_that) {
case _StepperState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TextFieldInput> verificationFieldsStepper,  TextFieldInput employeeIdStepper,  int currentStep,  bool isCheckedTermsPriv,  RequestStatus requestStatus,  RequestStatus requestStatusSendOtpStepper)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepperState() when $default != null:
return $default(_that.verificationFieldsStepper,_that.employeeIdStepper,_that.currentStep,_that.isCheckedTermsPriv,_that.requestStatus,_that.requestStatusSendOtpStepper);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TextFieldInput> verificationFieldsStepper,  TextFieldInput employeeIdStepper,  int currentStep,  bool isCheckedTermsPriv,  RequestStatus requestStatus,  RequestStatus requestStatusSendOtpStepper)  $default,) {final _that = this;
switch (_that) {
case _StepperState():
return $default(_that.verificationFieldsStepper,_that.employeeIdStepper,_that.currentStep,_that.isCheckedTermsPriv,_that.requestStatus,_that.requestStatusSendOtpStepper);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TextFieldInput> verificationFieldsStepper,  TextFieldInput employeeIdStepper,  int currentStep,  bool isCheckedTermsPriv,  RequestStatus requestStatus,  RequestStatus requestStatusSendOtpStepper)?  $default,) {final _that = this;
switch (_that) {
case _StepperState() when $default != null:
return $default(_that.verificationFieldsStepper,_that.employeeIdStepper,_that.currentStep,_that.isCheckedTermsPriv,_that.requestStatus,_that.requestStatusSendOtpStepper);case _:
  return null;

}
}

}

/// @nodoc


class _StepperState implements StepperState {
  const _StepperState({final  List<TextFieldInput> verificationFieldsStepper = const [], this.employeeIdStepper = const TextFieldInput(errorType: ErrorType.empty), this.currentStep = 0, this.isCheckedTermsPriv = false, this.requestStatus = RequestStatus.waiting, this.requestStatusSendOtpStepper = RequestStatus.waiting}): _verificationFieldsStepper = verificationFieldsStepper;
  

 final  List<TextFieldInput> _verificationFieldsStepper;
@override@JsonKey() List<TextFieldInput> get verificationFieldsStepper {
  if (_verificationFieldsStepper is EqualUnmodifiableListView) return _verificationFieldsStepper;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_verificationFieldsStepper);
}

@override@JsonKey() final  TextFieldInput employeeIdStepper;
@override@JsonKey() final  int currentStep;
@override@JsonKey() final  bool isCheckedTermsPriv;
@override@JsonKey() final  RequestStatus requestStatus;
@override@JsonKey() final  RequestStatus requestStatusSendOtpStepper;

/// Create a copy of StepperState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepperStateCopyWith<_StepperState> get copyWith => __$StepperStateCopyWithImpl<_StepperState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepperState&&const DeepCollectionEquality().equals(other._verificationFieldsStepper, _verificationFieldsStepper)&&(identical(other.employeeIdStepper, employeeIdStepper) || other.employeeIdStepper == employeeIdStepper)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.isCheckedTermsPriv, isCheckedTermsPriv) || other.isCheckedTermsPriv == isCheckedTermsPriv)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.requestStatusSendOtpStepper, requestStatusSendOtpStepper) || other.requestStatusSendOtpStepper == requestStatusSendOtpStepper));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_verificationFieldsStepper),employeeIdStepper,currentStep,isCheckedTermsPriv,requestStatus,requestStatusSendOtpStepper);

@override
String toString() {
  return 'StepperState(verificationFieldsStepper: $verificationFieldsStepper, employeeIdStepper: $employeeIdStepper, currentStep: $currentStep, isCheckedTermsPriv: $isCheckedTermsPriv, requestStatus: $requestStatus, requestStatusSendOtpStepper: $requestStatusSendOtpStepper)';
}


}

/// @nodoc
abstract mixin class _$StepperStateCopyWith<$Res> implements $StepperStateCopyWith<$Res> {
  factory _$StepperStateCopyWith(_StepperState value, $Res Function(_StepperState) _then) = __$StepperStateCopyWithImpl;
@override @useResult
$Res call({
 List<TextFieldInput> verificationFieldsStepper, TextFieldInput employeeIdStepper, int currentStep, bool isCheckedTermsPriv, RequestStatus requestStatus, RequestStatus requestStatusSendOtpStepper
});


@override $TextFieldInputCopyWith<$Res> get employeeIdStepper;

}
/// @nodoc
class __$StepperStateCopyWithImpl<$Res>
    implements _$StepperStateCopyWith<$Res> {
  __$StepperStateCopyWithImpl(this._self, this._then);

  final _StepperState _self;
  final $Res Function(_StepperState) _then;

/// Create a copy of StepperState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationFieldsStepper = null,Object? employeeIdStepper = null,Object? currentStep = null,Object? isCheckedTermsPriv = null,Object? requestStatus = null,Object? requestStatusSendOtpStepper = null,}) {
  return _then(_StepperState(
verificationFieldsStepper: null == verificationFieldsStepper ? _self._verificationFieldsStepper : verificationFieldsStepper // ignore: cast_nullable_to_non_nullable
as List<TextFieldInput>,employeeIdStepper: null == employeeIdStepper ? _self.employeeIdStepper : employeeIdStepper // ignore: cast_nullable_to_non_nullable
as TextFieldInput,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,isCheckedTermsPriv: null == isCheckedTermsPriv ? _self.isCheckedTermsPriv : isCheckedTermsPriv // ignore: cast_nullable_to_non_nullable
as bool,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestStatusSendOtpStepper: null == requestStatusSendOtpStepper ? _self.requestStatusSendOtpStepper : requestStatusSendOtpStepper // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}

/// Create a copy of StepperState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<$Res> get employeeIdStepper {
  
  return $TextFieldInputCopyWith<$Res>(_self.employeeIdStepper, (value) {
    return _then(_self.copyWith(employeeIdStepper: value));
  });
}
}

// dart format on
