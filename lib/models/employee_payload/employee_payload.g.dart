// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeePayload _$EmployeePayloadFromJson(Map<String, dynamic> json) =>
    _EmployeePayload(
      id: (json['id'] as num?)?.toInt(),
      appId: (json['appId'] as num?)?.toInt(),
      empId: (json['empId'] as num?)?.toInt(),
      position: json['position'] as String?,
      department: json['department'] == null
          ? null
          : Department.fromJson(json['department'] as Map<String, dynamic>),
      account: json['account'] as String?,
      supId: (json['supId'] as num?)?.toInt(),
      hired: json['hired'] as String?,
      due: json['due'] as String?,
      eogs: json['eogs'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      attrition: json['attrition'] as String?,
      applicant: json['applicant'] == null
          ? null
          : Applicant.fromJson(json['applicant'] as Map<String, dynamic>),
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeePayloadToJson(_EmployeePayload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appId': instance.appId,
      'empId': instance.empId,
      'position': instance.position,
      'department': instance.department,
      'account': instance.account,
      'supId': instance.supId,
      'hired': instance.hired,
      'due': instance.due,
      'eogs': instance.eogs,
      'status': instance.status,
      'created_at': instance.createdAt,
      'attrition': instance.attrition,
      'applicant': instance.applicant,
      'message': instance.message,
      'user': instance.user,
    };
