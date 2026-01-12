// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_payload.freezed.dart';
part 'account_payload.g.dart';


@freezed
abstract class AccountPayload with _$AccountPayload {
  const factory AccountPayload({
    String? message,
    User? user,
    @JsonKey(name: 'token') String? token,
  }) = _AccountPayload;

  factory AccountPayload.fromJson(Map<String, dynamic> json) =>
      _$AccountPayloadFromJson(json);
}
