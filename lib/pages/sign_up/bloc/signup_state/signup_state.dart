// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
sealed class SignupState with _$SignupState {
  // Added 'sealed'
  const factory SignupState({
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput signupEmail,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput signupPassword,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput signupConfirmPassword,
    @Default(false) bool isChecked,
  }) = _SignupState;
}
