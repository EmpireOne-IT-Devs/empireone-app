// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_identity_state.freezed.dart';

@freezed
sealed class VerifyIdentityState with _$VerifyIdentityState {
  // Added 'sealed'
  const factory VerifyIdentityState({
    @Default([]) List<TextFieldInput> verificationFieldsVerIdentity,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default(RequestStatus.waiting) RequestStatus requestStatusVerifyIdentity,
    @Default('') String message,
    required String emailForgotPassVal,
  }) = _VerifyIdentityState;
}
