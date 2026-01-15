// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:empireone_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_state.freezed.dart';

@freezed
sealed class VerifyAccountState with _$VerifyAccountState {
  // Added 'sealed'
  const factory VerifyAccountState({
    @Default([]) List<TextFieldInput> verificationFields,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput employeeId,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default(RequestStatus.waiting) RequestStatus requestStatusVerifyOtp,
    @Default('') String message,
    required String email,
  }) = _VerifyAccountState;
}
