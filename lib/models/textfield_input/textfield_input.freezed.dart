// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textfield_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TextFieldInput {

 String get value; ErrorType get errorType; String? get error; bool get obscureText;
/// Create a copy of TextFieldInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextFieldInputCopyWith<TextFieldInput> get copyWith => _$TextFieldInputCopyWithImpl<TextFieldInput>(this as TextFieldInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextFieldInput&&(identical(other.value, value) || other.value == value)&&(identical(other.errorType, errorType) || other.errorType == errorType)&&(identical(other.error, error) || other.error == error)&&(identical(other.obscureText, obscureText) || other.obscureText == obscureText));
}


@override
int get hashCode => Object.hash(runtimeType,value,errorType,error,obscureText);

@override
String toString() {
  return 'TextFieldInput(value: $value, errorType: $errorType, error: $error, obscureText: $obscureText)';
}


}

/// @nodoc
abstract mixin class $TextFieldInputCopyWith<$Res>  {
  factory $TextFieldInputCopyWith(TextFieldInput value, $Res Function(TextFieldInput) _then) = _$TextFieldInputCopyWithImpl;
@useResult
$Res call({
 String value, ErrorType errorType, String? error, bool obscureText
});




}
/// @nodoc
class _$TextFieldInputCopyWithImpl<$Res>
    implements $TextFieldInputCopyWith<$Res> {
  _$TextFieldInputCopyWithImpl(this._self, this._then);

  final TextFieldInput _self;
  final $Res Function(TextFieldInput) _then;

/// Create a copy of TextFieldInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? errorType = null,Object? error = freezed,Object? obscureText = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,errorType: null == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as ErrorType,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,obscureText: null == obscureText ? _self.obscureText : obscureText // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TextFieldInput].
extension TextFieldInputPatterns on TextFieldInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextFieldInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextFieldInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextFieldInput value)  $default,){
final _that = this;
switch (_that) {
case _TextFieldInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextFieldInput value)?  $default,){
final _that = this;
switch (_that) {
case _TextFieldInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  ErrorType errorType,  String? error,  bool obscureText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextFieldInput() when $default != null:
return $default(_that.value,_that.errorType,_that.error,_that.obscureText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  ErrorType errorType,  String? error,  bool obscureText)  $default,) {final _that = this;
switch (_that) {
case _TextFieldInput():
return $default(_that.value,_that.errorType,_that.error,_that.obscureText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  ErrorType errorType,  String? error,  bool obscureText)?  $default,) {final _that = this;
switch (_that) {
case _TextFieldInput() when $default != null:
return $default(_that.value,_that.errorType,_that.error,_that.obscureText);case _:
  return null;

}
}

}

/// @nodoc


class _TextFieldInput implements TextFieldInput {
  const _TextFieldInput({this.value = '', this.errorType = ErrorType.none, this.error = null, this.obscureText = true});
  

@override@JsonKey() final  String value;
@override@JsonKey() final  ErrorType errorType;
@override@JsonKey() final  String? error;
@override@JsonKey() final  bool obscureText;

/// Create a copy of TextFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextFieldInputCopyWith<_TextFieldInput> get copyWith => __$TextFieldInputCopyWithImpl<_TextFieldInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextFieldInput&&(identical(other.value, value) || other.value == value)&&(identical(other.errorType, errorType) || other.errorType == errorType)&&(identical(other.error, error) || other.error == error)&&(identical(other.obscureText, obscureText) || other.obscureText == obscureText));
}


@override
int get hashCode => Object.hash(runtimeType,value,errorType,error,obscureText);

@override
String toString() {
  return 'TextFieldInput(value: $value, errorType: $errorType, error: $error, obscureText: $obscureText)';
}


}

/// @nodoc
abstract mixin class _$TextFieldInputCopyWith<$Res> implements $TextFieldInputCopyWith<$Res> {
  factory _$TextFieldInputCopyWith(_TextFieldInput value, $Res Function(_TextFieldInput) _then) = __$TextFieldInputCopyWithImpl;
@override @useResult
$Res call({
 String value, ErrorType errorType, String? error, bool obscureText
});




}
/// @nodoc
class __$TextFieldInputCopyWithImpl<$Res>
    implements _$TextFieldInputCopyWith<$Res> {
  __$TextFieldInputCopyWithImpl(this._self, this._then);

  final _TextFieldInput _self;
  final $Res Function(_TextFieldInput) _then;

/// Create a copy of TextFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? errorType = null,Object? error = freezed,Object? obscureText = null,}) {
  return _then(_TextFieldInput(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,errorType: null == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as ErrorType,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,obscureText: null == obscureText ? _self.obscureText : obscureText // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
