// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant.freezed.dart';
part 'applicant.g.dart';

@freezed
abstract class Applicant with _$Applicant {
  const factory Applicant({
    int? id,
    @JsonKey(name: 'app_id') String? appId,
    String? fname,
    String? mname,
    String? lname,
    String? suffix,
    String? dob,
    String? caddress,
    String? paddress,
    int? age,
    String? marital,
    String? gender,
    String? religion,
    String? nationality,
    String? email,
    String? phone,
    String? mmname,
    String? ffname,
    String? educ,
    String? courset,
    String? sss,
    String? tin,
    String? philh,
    String? pagibig,
    String? ename,
    String? eaddress,
    String? relationship,
    String? ephone,
    String? status,
    String? agreed,
    @JsonKey(name: 'call_status') String? callStatus,
    String? site,
    String? submitted,
  }) = _Applicant;
  factory Applicant.fromJson(Map<String, dynamic> json) =>
      _$ApplicantFromJson(json);
}
