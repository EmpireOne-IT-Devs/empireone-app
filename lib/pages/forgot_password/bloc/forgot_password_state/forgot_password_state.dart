// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
sealed class ForgotPasswordState with _$ForgotPasswordState {
  // Added 'sealed'
  const factory ForgotPasswordState({
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput emailForgotPassVal,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default('') String message,
  }) = _ForgotPasswordState;
}
