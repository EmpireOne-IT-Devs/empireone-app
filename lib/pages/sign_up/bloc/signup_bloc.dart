import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/sign_up/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({required SignupState initialState}) : super(initialState) {
    on<SignupEmailChanged>(_signupEmailChanged);
    on<SignupPasswordChanged>(_signupPasswordChanged);
    on<SignupConfirmPasswordChanged>(_signupConfirmPassword);
    on<SignupAgreementCheckBoxPressed>(_signupAgreementCheckBoxPressed);
  }

  void _signupEmailChanged(
    SignupEmailChanged event,
    Emitter<SignupState> emit,
  ) {
    var signupEmailVal = state.signupEmail;

    var errorType = ErrorType.none;
    if (event.signupEmail.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.signupEmail.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[a-z]').hasMatch(event.signupEmail)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.signupEmail)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.signupEmail)) {
      errorType = ErrorType.digitNumber;
    } else if (!RegExp(
      r'[!@#\$%^&*(),.?":{}|<>]',
    ).hasMatch(event.signupEmail)) {
      errorType = ErrorType.specialCharacter;
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(event.signupEmail)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }
    signupEmailVal = signupEmailVal.copyWith(
      value: event.signupEmail,
      errorType: errorType,
    );
    emit(state.copyWith(signupEmail: signupEmailVal));
  }

  void _signupPasswordChanged(
    SignupPasswordChanged event,
    Emitter<SignupState> emit,
  ) {
    var signupPassword = state.signupPassword;

    var errorType = ErrorType.none;
    if (event.signupPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.signupPassword.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[a-z]').hasMatch(event.signupPassword)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.signupPassword)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.signupPassword)) {
      errorType = ErrorType.digitNumber;
    } else if (!RegExp(
      r'[!@#\$%^&*(),.?":{}|<>]',
    ).hasMatch(event.signupPassword)) {
      errorType = ErrorType.specialCharacter;
    } else {
      errorType = ErrorType.none;
    }
    signupPassword = signupPassword.copyWith(
      value: event.signupPassword,
      errorType: errorType,
    );
    emit(state.copyWith(signupEmail: signupPassword));
  }

  void _signupConfirmPassword(
    SignupConfirmPasswordChanged event,
    Emitter<SignupState> emit,
  ) {
    var signupConfirmPassword = state.signupConfirmPassword;

    var errorType = ErrorType.none;
    if (event.signupConfirmPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.signupConfirmPassword.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[a-z]').hasMatch(event.signupConfirmPassword)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.signupConfirmPassword)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.signupConfirmPassword)) {
      errorType = ErrorType.digitNumber;
    } else if (!RegExp(
      r'[!@#\$%^&*(),.?":{}|<>]',
    ).hasMatch(event.signupConfirmPassword)) {
      errorType = ErrorType.specialCharacter;
    } else {
      errorType = ErrorType.none;
    }
    signupConfirmPassword = signupConfirmPassword.copyWith(
      value: event.signupConfirmPassword,
      errorType: errorType,
    );
    emit(state.copyWith(signupEmail: signupConfirmPassword));
  }

  void _signupAgreementCheckBoxPressed(
    SignupAgreementCheckBoxPressed event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(isChecked: !state.isChecked));
  }
}
