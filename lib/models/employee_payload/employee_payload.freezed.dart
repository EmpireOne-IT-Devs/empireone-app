// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeePayload {

 int? get id;@JsonKey(name: 'app_id') String? get appId;@JsonKey(name: 'emp_id') String? get empId; String? get position;@JsonKey(name: 'dept') Department? get department; String? get account;@JsonKey(name: 'sup_id') int? get supId; String? get hired; String? get due; String? get eogs; String? get status;@JsonKey(name: 'created') String? get createdAt; String? get attrition; Applicant? get applicant; String? get message; User? get user;
/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeePayloadCopyWith<EmployeePayload> get copyWith => _$EmployeePayloadCopyWithImpl<EmployeePayload>(this as EmployeePayload, _$identity);

  /// Serializes this EmployeePayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeePayload&&(identical(other.id, id) || other.id == id)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.empId, empId) || other.empId == empId)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.account, account) || other.account == account)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.hired, hired) || other.hired == hired)&&(identical(other.due, due) || other.due == due)&&(identical(other.eogs, eogs) || other.eogs == eogs)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.attrition, attrition) || other.attrition == attrition)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.message, message) || other.message == message)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,appId,empId,position,department,account,supId,hired,due,eogs,status,createdAt,attrition,applicant,message,user);

@override
String toString() {
  return 'EmployeePayload(id: $id, appId: $appId, empId: $empId, position: $position, department: $department, account: $account, supId: $supId, hired: $hired, due: $due, eogs: $eogs, status: $status, createdAt: $createdAt, attrition: $attrition, applicant: $applicant, message: $message, user: $user)';
}


}

/// @nodoc
abstract mixin class $EmployeePayloadCopyWith<$Res>  {
  factory $EmployeePayloadCopyWith(EmployeePayload value, $Res Function(EmployeePayload) _then) = _$EmployeePayloadCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'app_id') String? appId,@JsonKey(name: 'emp_id') String? empId, String? position,@JsonKey(name: 'dept') Department? department, String? account,@JsonKey(name: 'sup_id') int? supId, String? hired, String? due, String? eogs, String? status,@JsonKey(name: 'created') String? createdAt, String? attrition, Applicant? applicant, String? message, User? user
});


$DepartmentCopyWith<$Res>? get department;$ApplicantCopyWith<$Res>? get applicant;$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$EmployeePayloadCopyWithImpl<$Res>
    implements $EmployeePayloadCopyWith<$Res> {
  _$EmployeePayloadCopyWithImpl(this._self, this._then);

  final EmployeePayload _self;
  final $Res Function(EmployeePayload) _then;

/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? appId = freezed,Object? empId = freezed,Object? position = freezed,Object? department = freezed,Object? account = freezed,Object? supId = freezed,Object? hired = freezed,Object? due = freezed,Object? eogs = freezed,Object? status = freezed,Object? createdAt = freezed,Object? attrition = freezed,Object? applicant = freezed,Object? message = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,empId: freezed == empId ? _self.empId : empId // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as String?,supId: freezed == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int?,hired: freezed == hired ? _self.hired : hired // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as String?,eogs: freezed == eogs ? _self.eogs : eogs // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,attrition: freezed == attrition ? _self.attrition : attrition // ignore: cast_nullable_to_non_nullable
as String?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as Applicant?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res>? get department {
    if (_self.department == null) {
    return null;
  }

  return $DepartmentCopyWith<$Res>(_self.department!, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeePayload].
extension EmployeePayloadPatterns on EmployeePayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeePayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeePayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeePayload value)  $default,){
final _that = this;
switch (_that) {
case _EmployeePayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeePayload value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeePayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'app_id')  String? appId, @JsonKey(name: 'emp_id')  String? empId,  String? position, @JsonKey(name: 'dept')  Department? department,  String? account, @JsonKey(name: 'sup_id')  int? supId,  String? hired,  String? due,  String? eogs,  String? status, @JsonKey(name: 'created')  String? createdAt,  String? attrition,  Applicant? applicant,  String? message,  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeePayload() when $default != null:
return $default(_that.id,_that.appId,_that.empId,_that.position,_that.department,_that.account,_that.supId,_that.hired,_that.due,_that.eogs,_that.status,_that.createdAt,_that.attrition,_that.applicant,_that.message,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'app_id')  String? appId, @JsonKey(name: 'emp_id')  String? empId,  String? position, @JsonKey(name: 'dept')  Department? department,  String? account, @JsonKey(name: 'sup_id')  int? supId,  String? hired,  String? due,  String? eogs,  String? status, @JsonKey(name: 'created')  String? createdAt,  String? attrition,  Applicant? applicant,  String? message,  User? user)  $default,) {final _that = this;
switch (_that) {
case _EmployeePayload():
return $default(_that.id,_that.appId,_that.empId,_that.position,_that.department,_that.account,_that.supId,_that.hired,_that.due,_that.eogs,_that.status,_that.createdAt,_that.attrition,_that.applicant,_that.message,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'app_id')  String? appId, @JsonKey(name: 'emp_id')  String? empId,  String? position, @JsonKey(name: 'dept')  Department? department,  String? account, @JsonKey(name: 'sup_id')  int? supId,  String? hired,  String? due,  String? eogs,  String? status, @JsonKey(name: 'created')  String? createdAt,  String? attrition,  Applicant? applicant,  String? message,  User? user)?  $default,) {final _that = this;
switch (_that) {
case _EmployeePayload() when $default != null:
return $default(_that.id,_that.appId,_that.empId,_that.position,_that.department,_that.account,_that.supId,_that.hired,_that.due,_that.eogs,_that.status,_that.createdAt,_that.attrition,_that.applicant,_that.message,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeePayload implements EmployeePayload {
  const _EmployeePayload({this.id, @JsonKey(name: 'app_id') this.appId, @JsonKey(name: 'emp_id') this.empId, this.position, @JsonKey(name: 'dept') this.department, this.account, @JsonKey(name: 'sup_id') this.supId, this.hired, this.due, this.eogs, this.status, @JsonKey(name: 'created') this.createdAt, this.attrition, this.applicant, this.message, this.user});
  factory _EmployeePayload.fromJson(Map<String, dynamic> json) => _$EmployeePayloadFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'app_id') final  String? appId;
@override@JsonKey(name: 'emp_id') final  String? empId;
@override final  String? position;
@override@JsonKey(name: 'dept') final  Department? department;
@override final  String? account;
@override@JsonKey(name: 'sup_id') final  int? supId;
@override final  String? hired;
@override final  String? due;
@override final  String? eogs;
@override final  String? status;
@override@JsonKey(name: 'created') final  String? createdAt;
@override final  String? attrition;
@override final  Applicant? applicant;
@override final  String? message;
@override final  User? user;

/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeePayloadCopyWith<_EmployeePayload> get copyWith => __$EmployeePayloadCopyWithImpl<_EmployeePayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeePayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeePayload&&(identical(other.id, id) || other.id == id)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.empId, empId) || other.empId == empId)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.account, account) || other.account == account)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.hired, hired) || other.hired == hired)&&(identical(other.due, due) || other.due == due)&&(identical(other.eogs, eogs) || other.eogs == eogs)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.attrition, attrition) || other.attrition == attrition)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.message, message) || other.message == message)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,appId,empId,position,department,account,supId,hired,due,eogs,status,createdAt,attrition,applicant,message,user);

@override
String toString() {
  return 'EmployeePayload(id: $id, appId: $appId, empId: $empId, position: $position, department: $department, account: $account, supId: $supId, hired: $hired, due: $due, eogs: $eogs, status: $status, createdAt: $createdAt, attrition: $attrition, applicant: $applicant, message: $message, user: $user)';
}


}

/// @nodoc
abstract mixin class _$EmployeePayloadCopyWith<$Res> implements $EmployeePayloadCopyWith<$Res> {
  factory _$EmployeePayloadCopyWith(_EmployeePayload value, $Res Function(_EmployeePayload) _then) = __$EmployeePayloadCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'app_id') String? appId,@JsonKey(name: 'emp_id') String? empId, String? position,@JsonKey(name: 'dept') Department? department, String? account,@JsonKey(name: 'sup_id') int? supId, String? hired, String? due, String? eogs, String? status,@JsonKey(name: 'created') String? createdAt, String? attrition, Applicant? applicant, String? message, User? user
});


@override $DepartmentCopyWith<$Res>? get department;@override $ApplicantCopyWith<$Res>? get applicant;@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$EmployeePayloadCopyWithImpl<$Res>
    implements _$EmployeePayloadCopyWith<$Res> {
  __$EmployeePayloadCopyWithImpl(this._self, this._then);

  final _EmployeePayload _self;
  final $Res Function(_EmployeePayload) _then;

/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? appId = freezed,Object? empId = freezed,Object? position = freezed,Object? department = freezed,Object? account = freezed,Object? supId = freezed,Object? hired = freezed,Object? due = freezed,Object? eogs = freezed,Object? status = freezed,Object? createdAt = freezed,Object? attrition = freezed,Object? applicant = freezed,Object? message = freezed,Object? user = freezed,}) {
  return _then(_EmployeePayload(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,empId: freezed == empId ? _self.empId : empId // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as String?,supId: freezed == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int?,hired: freezed == hired ? _self.hired : hired // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as String?,eogs: freezed == eogs ? _self.eogs : eogs // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,attrition: freezed == attrition ? _self.attrition : attrition // ignore: cast_nullable_to_non_nullable
as String?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as Applicant?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res>? get department {
    if (_self.department == null) {
    return null;
  }

  return $DepartmentCopyWith<$Res>(_self.department!, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of EmployeePayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
