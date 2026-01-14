// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_user.freezed.dart';
part 'employee_user.g.dart';

@freezed
abstract class EmployeeUser with _$EmployeeUser {
  const factory EmployeeUser({
    int? id,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'employee_id') String? employeeId, // JSON has "" (String)
    @JsonKey(name: 'employee_fname') String? firstName,
    @JsonKey(name: 'employee_lname') String? lastName,
    String? email,
    String? gender,
    String? department,
    @JsonKey(name: 'sup_id') int? supId, // JSON has 2 (int)
    String? position,
    String? site,
    String? created,
  }) = _EmployeeUser;

  factory EmployeeUser.fromJson(Map<String, dynamic> json) =>
      _$EmployeeUserFromJson(json);
}
