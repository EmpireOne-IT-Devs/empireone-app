// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stepper_state.freezed.dart';

@freezed
sealed class StepperState with _$StepperState {
  // Added 'sealed'
  const factory StepperState({
    @Default([]) List<TextFieldInput> verificationFieldsStepper,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput employeeIdStepper,
    @Default(0) int currentStep,
    @Default(false) bool isCheckedTermsPriv,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default(RequestStatus.waiting) RequestStatus requestStatusSendOtpStepper,
    @Default(RequestStatus.waiting) RequestStatus requestStatusVerifyOtpStepper,
    @Default('') String message,
  }) = _StepperState;
}
