import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/sign_up/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AccountRepository _accountRepository;
  SignupBloc({
    required SignupState initialState,
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<SignupEmailChanged>(_signupEmailChanged);
    on<NameChanged>(_nameChanged);
    on<SignupPasswordChanged>(_signupPasswordChanged);
    on<SignupConfirmPasswordChanged>(_signupConfirmPassword);
    on<SignupAgreementCheckBoxPressed>(_signupAgreementCheckBoxPressed);
    on<SignupPressed>(_signupPressed);
  }

  void _signupPressed(SignupPressed event, Emitter<SignupState> emit) async {
    var result = await _accountRepository.signupJobSeeker(
      name: state.name.value,
      email: state.signupEmail.value,
      password: state.signupPassword.value,
      passwordConfirmation: state.signupConfirmPassword.value,
    );
    switch (result.resultStatus) {
      case ResultStatus.success:
        emit(state.copyWith(requestStatus: RequestStatus.success));
        break;
      case ResultStatus.error:
      emit(state.copyWith(requestStatus: RequestStatus.failure));
      break;
      case ResultStatus.none:
      break;
    }
    // print('name: ${state.name.value}');
    // print('email: ${state.signupEmail.value}');
    // print('password: ${state.signupPassword.value}');
    // print('passwordConfirmation: ${state.signupConfirmPassword.value}');
    // print('here result signup pressed: $result');
  }

  void _nameChanged(NameChanged event, Emitter<SignupState> emit) {
    var name = state.name;
    var errorType = ErrorType.none;
    if (event.name.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.name.length < 6) {
      errorType = ErrorType.length;
    } else {
      errorType = ErrorType.none;
    }
    name = name.copyWith(value: event.name, errorType: errorType);
    emit(state.copyWith(name: name));
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
    print('email val: $signupEmailVal');
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
    } else if (event.signupPassword.length < 10) {
      errorType = ErrorType.length;
    } else {
      errorType = ErrorType.none;
    }
    signupPassword = signupPassword.copyWith(
      value: event.signupPassword,
      errorType: errorType,
    );
    emit(state.copyWith(signupPassword: signupPassword));
  }

  void _signupConfirmPassword(
    SignupConfirmPasswordChanged event,
    Emitter<SignupState> emit,
  ) {
    var signupConfirmPassword = state.signupConfirmPassword;
    var errorType = ErrorType.none;
    if (event.signupConfirmPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.signupConfirmPassword.length < 10) {
      errorType = ErrorType.length;
    } else {
      errorType = ErrorType.none;
    }
    signupConfirmPassword = signupConfirmPassword.copyWith(
      value: event.signupConfirmPassword,
      errorType: errorType,
    );
    emit(state.copyWith(signupConfirmPassword: signupConfirmPassword));
  }

  void _signupAgreementCheckBoxPressed(
    SignupAgreementCheckBoxPressed event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(isChecked: !state.isChecked));
  }
}
