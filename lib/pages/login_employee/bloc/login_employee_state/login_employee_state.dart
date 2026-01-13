// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_employee_state.freezed.dart';

@freezed
sealed class LoginEmployeeState with _$LoginEmployeeState {
  // Added 'sealed'
  const factory LoginEmployeeState({
    @Default(TextFieldInput(errorType: ErrorType.empty)) TextFieldInput employeeId,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default('') String message,
  }) = _LoginEmployeeState;
}
