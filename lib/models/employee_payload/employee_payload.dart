// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:empireone_app/models/applicant/applicant.dart';
import 'package:empireone_app/models/department/department.dart';
import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_payload.freezed.dart';
part 'employee_payload.g.dart';


@freezed
abstract class EmployeePayload with _$EmployeePayload {
  const factory EmployeePayload({
    int? id,
    @JsonKey(name: 'app_id') String? appId,
    @JsonKey(name: 'emp_id') String? empId,
    String? position,
    @JsonKey(name: 'dept') Department? department,
    String? account,
    @JsonKey(name: 'sup_id') int? supId,
    String? hired,
    String? due,
    String? eogs,
    String? status,
    @JsonKey(name: 'created') String? createdAt,
    String? attrition,
    Applicant? applicant,
    String? message,
    User? user,
  }) = _EmployeePayload;

  factory EmployeePayload.fromJson(Map<String, dynamic> json) =>
      _$EmployeePayloadFromJson(json);
}
