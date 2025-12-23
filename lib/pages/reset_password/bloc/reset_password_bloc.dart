import 'package:bloc/bloc.dart';
import 'package:empireone_app/models/textfield_input/textfield_input.dart';
import 'package:empireone_app/pages/reset_password/bloc/bloc.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc({required ResetPasswordState initialState})
    : super(initialState) {
    on<ResetNewPasswordChanged>(_resetNewPasswordChanged);
    // on<ResetConfirmNewPassword>(_resetConfirmNewPassword);

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
    } else if (!RegExp(r'[a-z]').hasMatch(event.resetNewPassword)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.resetNewPassword)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.resetNewPassword)) {
      errorType = ErrorType.digitNumber;
    } else if (!RegExp(
      r'[!@#\$%^&*(),.?":{}|<>]',
    ).hasMatch(event.resetNewPassword)) {
      errorType = ErrorType.specialCharacter;
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(event.resetNewPassword)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }
    resetNewPassword = resetNewPassword.copyWith(
      value: event.resetNewPassword,
      errorType: errorType,
    );
    print(resetNewPassword);
    emit(state.copyWith(resetNewPassword: resetNewPassword));
  }


}
