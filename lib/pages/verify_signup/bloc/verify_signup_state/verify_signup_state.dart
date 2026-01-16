// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_signup_state.freezed.dart';

@freezed
sealed class VerifySignupState with _$VerifySignupState {
  // Added 'sealed'
  const factory VerifySignupState({
    required String name,
    required String signupEmail,
    required String signupPassword,
    required String signupConfirmPassword,
    @Default([]) List<TextFieldInput> verificationFieldsSignup,
    @Default('') String message,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _VerifySignupState;
}
