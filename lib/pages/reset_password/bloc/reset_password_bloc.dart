import 'package:bloc/bloc.dart';
import 'package:empireone_app/models/textfield_input/textfield_input.dart';
import 'package:empireone_app/pages/reset_password/bloc/bloc.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc({required ResetPasswordState initialState})
    : super(initialState) {
    on<ResetNewPasswordChanged>(_resetNewPasswordChanged);
    on<ResetConfirmNewPassword>(_resetConfirmNewPassword);
  }

  void _resetNewPasswordChanged(
    ResetNewPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    var resetNewPassword = state.resetNewPassword;

    var errorType = ErrorType.none;
    if (event.resetNewPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.resetNewPassword.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.resetNewPassword)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.resetNewPassword)) {
      errorType = ErrorType.digitNumber;
    } else {
      errorType = ErrorType.none;
    }
    resetNewPassword = resetNewPassword.copyWith(
      value: event.resetNewPassword,
      errorType: errorType,
    );
    emit(state.copyWith(resetNewPassword: resetNewPassword));
  }

  void _resetConfirmNewPassword(
    ResetConfirmNewPassword event,
    Emitter<ResetPasswordState> emit,
  ) {
    var resetConfrimNewPassword = state.resetConfirmNewPassword;

    var errorType = ErrorType.none;
    if (event.resetConfirmNewPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.resetConfirmNewPassword.length < 8) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.resetConfirmNewPassword)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.resetConfirmNewPassword)) {
      errorType = ErrorType.digitNumber;
    } else {
      errorType = ErrorType.none;
    }
    resetConfrimNewPassword = resetConfrimNewPassword.copyWith(
      value: event.resetConfirmNewPassword,
      errorType: errorType,
    );
    emit(state.copyWith(resetConfirmNewPassword: resetConfrimNewPassword));
  }
}
