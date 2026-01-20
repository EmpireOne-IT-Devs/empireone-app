import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/sign_up/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:empireone_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AccountRepository _accountRepository;
  final GoogleRepository _googleRepository;
  SignupBloc({
    required SignupState initialState,
    required AccountRepository accountRepository,
    required GoogleRepository googleRepository,
  }) : _googleRepository = googleRepository,
       _accountRepository = accountRepository,
       super(initialState) {
    on<SignupEmailChanged>(_signupEmailChanged);
    on<NameChanged>(_nameChanged);
    on<SignupPasswordChanged>(_signupPasswordChanged);
    on<SignupConfirmPasswordChanged>(_signupConfirmPassword);
    on<SignupAgreementCheckBoxPressed>(_signupAgreementCheckBoxPressed);
    on<SignupPressed>(_signupPressed);
    on<GoogleSignupPressed>(_googleSignupPressed);
  }

  Future<void> _googleSignupPressed(
    GoogleSignupPressed event,
    Emitter<SignupState> emit,
  ) async {
    var googleSignInAuthentication = await _googleRepository.signIn();
    var tokenId = googleSignInAuthentication?.idToken;
    emit(state.copyWith(requestStatus: RequestStatus.inProgress));
    var result = await _accountRepository.signInTGoogle(idToken: tokenId ?? '');
    print('bloc result: ${result.resultStatus}');
    switch (result.resultStatus) {
      case ResultStatus.success:
        emit(state.copyWith(googleSignupRequestStatus: RequestStatus.success));
        break;
      case ResultStatus.error:
        emit(state.copyWith(googleSignupRequestStatus: RequestStatus.failure));
        break;
      case ResultStatus.none:
        break;
    }
  }

  Future<void> _signupPressed(
    SignupPressed event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(requestStatus: RequestStatus.waiting));
    emit(state.copyWith(requestStatus: RequestStatus.inProgress));
    var result = await _accountRepository.signupJobSeeker(
      name: state.name.value,
      email: state.signupEmail.value,
      password: state.signupPassword.value,
      passwordConfirmation: state.signupConfirmPassword.value,
    );
    print('result bloc: ${result.resultStatus}');
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
