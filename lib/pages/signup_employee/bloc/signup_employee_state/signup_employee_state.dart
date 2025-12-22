// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_employee_state.freezed.dart';

@freezed
sealed class SignupEmployeeState with _$SignupEmployeeState {
  // Added 'sealed'
  const factory SignupEmployeeState({
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput employeeId,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput signupEmployeePassword,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput signupEmployeeConfirmPassword,
    @Default(false) bool isChecked,
  }) = _SignupEmployeeState;
}
