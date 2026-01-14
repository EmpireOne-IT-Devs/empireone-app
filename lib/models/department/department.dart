// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:empireone_app/models/employee_user/employee_user.dart';
import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';
part 'department.g.dart';

@freezed
abstract class Department with _$Department {
  const factory Department({
    int? id,
    String? dept,
    String? depthead,
    String? site,
    @JsonKey(name: 'created') String? createdAt,
    EmployeeUser? user,
  }) = _Department;
  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
