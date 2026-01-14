// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Department _$DepartmentFromJson(Map<String, dynamic> json) => _Department(
  id: (json['id'] as num?)?.toInt(),
  dept: json['dept'] as String?,
  depthead: json['depthead'] as String?,
  site: json['site'] as String?,
  createdAt: json['created'] as String?,
  user: json['user'] == null
      ? null
      : EmployeeUser.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DepartmentToJson(_Department instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dept': instance.dept,
      'depthead': instance.depthead,
      'site': instance.site,
      'created': instance.createdAt,
      'user': instance.user,
    };
