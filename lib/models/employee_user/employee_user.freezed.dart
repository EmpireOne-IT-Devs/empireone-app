// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeUser {

 int? get id;@JsonKey(name: 'role_id') int? get roleId;@JsonKey(name: 'employee_id') String? get employeeId;// JSON has "" (String)
@JsonKey(name: 'employee_fname') String? get firstName;@JsonKey(name: 'employee_lname') String? get lastName; String? get email; String? get gender; String? get department;@JsonKey(name: 'sup_id') int? get supId;// JSON has 2 (int)
 String? get position; String? get site; String? get created;
/// Create a copy of EmployeeUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeUserCopyWith<EmployeeUser> get copyWith => _$EmployeeUserCopyWithImpl<EmployeeUser>(this as EmployeeUser, _$identity);

  /// Serializes this EmployeeUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeUser&&(identical(other.id, id) || other.id == id)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.department, department) || other.department == department)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.position, position) || other.position == position)&&(identical(other.site, site) || other.site == site)&&(identical(other.created, created) || other.created == created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roleId,employeeId,firstName,lastName,email,gender,department,supId,position,site,created);

@override
String toString() {
  return 'EmployeeUser(id: $id, roleId: $roleId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, department: $department, supId: $supId, position: $position, site: $site, created: $created)';
}


}

/// @nodoc
abstract mixin class $EmployeeUserCopyWith<$Res>  {
  factory $EmployeeUserCopyWith(EmployeeUser value, $Res Function(EmployeeUser) _then) = _$EmployeeUserCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'role_id') int? roleId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'employee_fname') String? firstName,@JsonKey(name: 'employee_lname') String? lastName, String? email, String? gender, String? department,@JsonKey(name: 'sup_id') int? supId, String? position, String? site, String? created
});




}
/// @nodoc
class _$EmployeeUserCopyWithImpl<$Res>
    implements $EmployeeUserCopyWith<$Res> {
  _$EmployeeUserCopyWithImpl(this._self, this._then);

  final EmployeeUser _self;
  final $Res Function(EmployeeUser) _then;

/// Create a copy of EmployeeUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? roleId = freezed,Object? employeeId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? gender = freezed,Object? department = freezed,Object? supId = freezed,Object? position = freezed,Object? site = freezed,Object? created = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,supId: freezed == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeUser].
extension EmployeeUserPatterns on EmployeeUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeUser value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeUser value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'role_id')  int? roleId, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'employee_fname')  String? firstName, @JsonKey(name: 'employee_lname')  String? lastName,  String? email,  String? gender,  String? department, @JsonKey(name: 'sup_id')  int? supId,  String? position,  String? site,  String? created)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeUser() when $default != null:
return $default(_that.id,_that.roleId,_that.employeeId,_that.firstName,_that.lastName,_that.email,_that.gender,_that.department,_that.supId,_that.position,_that.site,_that.created);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'role_id')  int? roleId, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'employee_fname')  String? firstName, @JsonKey(name: 'employee_lname')  String? lastName,  String? email,  String? gender,  String? department, @JsonKey(name: 'sup_id')  int? supId,  String? position,  String? site,  String? created)  $default,) {final _that = this;
switch (_that) {
case _EmployeeUser():
return $default(_that.id,_that.roleId,_that.employeeId,_that.firstName,_that.lastName,_that.email,_that.gender,_that.department,_that.supId,_that.position,_that.site,_that.created);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'role_id')  int? roleId, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'employee_fname')  String? firstName, @JsonKey(name: 'employee_lname')  String? lastName,  String? email,  String? gender,  String? department, @JsonKey(name: 'sup_id')  int? supId,  String? position,  String? site,  String? created)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeUser() when $default != null:
return $default(_that.id,_that.roleId,_that.employeeId,_that.firstName,_that.lastName,_that.email,_that.gender,_that.department,_that.supId,_that.position,_that.site,_that.created);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeUser implements EmployeeUser {
  const _EmployeeUser({this.id, @JsonKey(name: 'role_id') this.roleId, @JsonKey(name: 'employee_id') this.employeeId, @JsonKey(name: 'employee_fname') this.firstName, @JsonKey(name: 'employee_lname') this.lastName, this.email, this.gender, this.department, @JsonKey(name: 'sup_id') this.supId, this.position, this.site, this.created});
  factory _EmployeeUser.fromJson(Map<String, dynamic> json) => _$EmployeeUserFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'role_id') final  int? roleId;
@override@JsonKey(name: 'employee_id') final  String? employeeId;
// JSON has "" (String)
@override@JsonKey(name: 'employee_fname') final  String? firstName;
@override@JsonKey(name: 'employee_lname') final  String? lastName;
@override final  String? email;
@override final  String? gender;
@override final  String? department;
@override@JsonKey(name: 'sup_id') final  int? supId;
// JSON has 2 (int)
@override final  String? position;
@override final  String? site;
@override final  String? created;

/// Create a copy of EmployeeUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeUserCopyWith<_EmployeeUser> get copyWith => __$EmployeeUserCopyWithImpl<_EmployeeUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeUser&&(identical(other.id, id) || other.id == id)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.department, department) || other.department == department)&&(identical(other.supId, supId) || other.supId == supId)&&(identical(other.position, position) || other.position == position)&&(identical(other.site, site) || other.site == site)&&(identical(other.created, created) || other.created == created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roleId,employeeId,firstName,lastName,email,gender,department,supId,position,site,created);

@override
String toString() {
  return 'EmployeeUser(id: $id, roleId: $roleId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, department: $department, supId: $supId, position: $position, site: $site, created: $created)';
}


}

/// @nodoc
abstract mixin class _$EmployeeUserCopyWith<$Res> implements $EmployeeUserCopyWith<$Res> {
  factory _$EmployeeUserCopyWith(_EmployeeUser value, $Res Function(_EmployeeUser) _then) = __$EmployeeUserCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'role_id') int? roleId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'employee_fname') String? firstName,@JsonKey(name: 'employee_lname') String? lastName, String? email, String? gender, String? department,@JsonKey(name: 'sup_id') int? supId, String? position, String? site, String? created
});




}
/// @nodoc
class __$EmployeeUserCopyWithImpl<$Res>
    implements _$EmployeeUserCopyWith<$Res> {
  __$EmployeeUserCopyWithImpl(this._self, this._then);

  final _EmployeeUser _self;
  final $Res Function(_EmployeeUser) _then;

/// Create a copy of EmployeeUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? roleId = freezed,Object? employeeId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? gender = freezed,Object? department = freezed,Object? supId = freezed,Object? position = freezed,Object? site = freezed,Object? created = freezed,}) {
  return _then(_EmployeeUser(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,supId: freezed == supId ? _self.supId : supId // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
