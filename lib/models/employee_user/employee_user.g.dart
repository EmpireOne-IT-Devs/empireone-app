// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeUser _$EmployeeUserFromJson(Map<String, dynamic> json) =>
    _EmployeeUser(
      id: (json['id'] as num?)?.toInt(),
      roleId: (json['role_id'] as num?)?.toInt(),
      employeeId: json['employee_id'] as String?,
      firstName: json['employee_fname'] as String?,
      lastName: json['employee_lname'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      department: json['department'] as String?,
      supId: (json['sup_id'] as num?)?.toInt(),
      position: json['position'] as String?,
      site: json['site'] as String?,
      created: json['created'] as String?,
    );

Map<String, dynamic> _$EmployeeUserToJson(_EmployeeUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role_id': instance.roleId,
      'employee_id': instance.employeeId,
      'employee_fname': instance.firstName,
      'employee_lname': instance.lastName,
      'email': instance.email,
      'gender': instance.gender,
      'department': instance.department,
      'sup_id': instance.supId,
      'position': instance.position,
      'site': instance.site,
      'created': instance.created,
    };
