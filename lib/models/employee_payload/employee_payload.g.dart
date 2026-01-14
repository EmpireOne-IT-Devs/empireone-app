// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeePayload _$EmployeePayloadFromJson(Map<String, dynamic> json) =>
    _EmployeePayload(
      id: (json['id'] as num?)?.toInt(),
      appId: json['app_id'] as String?,
      empId: json['emp_id'] as String?,
      position: json['position'] as String?,
      department: json['dept'] == null
          ? null
          : Department.fromJson(json['dept'] as Map<String, dynamic>),
      account: json['account'] as String?,
      supId: (json['sup_id'] as num?)?.toInt(),
      hired: json['hired'] as String?,
      due: json['due'] as String?,
      eogs: json['eogs'] as String?,
      status: json['status'] as String?,
      createdAt: json['created'] as String?,
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
      'app_id': instance.appId,
      'emp_id': instance.empId,
      'position': instance.position,
      'dept': instance.department,
      'account': instance.account,
      'sup_id': instance.supId,
      'hired': instance.hired,
      'due': instance.due,
      'eogs': instance.eogs,
      'status': instance.status,
      'created': instance.createdAt,
      'attrition': instance.attrition,
      'applicant': instance.applicant,
      'message': instance.message,
      'user': instance.user,
    };
