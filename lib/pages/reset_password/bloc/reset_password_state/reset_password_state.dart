// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
sealed class ResetPasswordState with _$ResetPasswordState {
  // Added 'sealed'
  const factory ResetPasswordState({
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput resetNewPassword,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput resetConfirmNewPassword,
  }) = _ResetPasswordState;
}
