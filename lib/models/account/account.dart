// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    String? message,
    required User user,
    required String token,
  }) = _Account;
   factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
