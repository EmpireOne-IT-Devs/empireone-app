import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:empireone_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GoogleRepository _googleRepository;
  final AccountRepository _accountRepository;
  LoginBloc({
    required GoogleRepository googleRepository,
    required LoginState initialState,
    required AccountRepository accountRepository,
  }) : _googleRepository = googleRepository,
       _accountRepository = accountRepository,
       super(initialState) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<GooglePressed>(_googlePressed);
    on<LoginPressed>(_loginPressed);
  }

  void _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    var email = state.email;

    var errorType = ErrorType.none;
    if (event.email.isEmpty) {
      errorType = ErrorType.none;
    } else if (event.email.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[a-z]').hasMatch(event.email)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(event.email)) {
      errorType = ErrorType.specialCharacter;
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(event.email)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }

    email = email.copyWith(value: event.email, errorType: errorType);
    emit(state.copyWith(email: email));
  }

  void _passwordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    var password = state.password;

    var errorType = ErrorType.none;
    if (event.password.isEmpty) {
      errorType = ErrorType.none;
    } else if (event.password.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[a-z]').hasMatch(event.password)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.password)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.password)) {
      errorType = ErrorType.digitNumber;
    } else if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(event.password)) {
      errorType = ErrorType.specialCharacter;
    } else {
      errorType = ErrorType.none;
    }

    password = password.copyWith(value: event.password, errorType: errorType);
    emit(state.copyWith(password: password));
  }

  Future<void> _googlePressed(
    GooglePressed event,
    Emitter<LoginState> emit,
  ) async {
    // final googleSignInAuthentication = await _googleRepository.signIn();
    // var token = googleSignInAuthentication?.accessToken;
    // var idToken =  googleSignInAuthentication?.idToken;
    // print('here token: $token');
    // print('id token: $idToken');
    // if(token != null){
    //   emit(state.copyWith(requestStatus: RequestStatus.inProgress));
    //   var result = await _accountRepository.signInTGoogle(accessToken: token);
    //   switch (result.resultStatus) {
    //     case ResultStatus.success:
    //       // var accountId = result.data?.account?.id;
    //       // var token = result.data?.accessToken;

    //       // if (accountId != null && token != null) {
    //       //   await _accountRepository.save(
    //       //     id: accountId,
    //       //     token: token,
    //       //     email: result.data?.account?.email,
    //       //   );
    //       // }
    //       emit(state.copyWith(requestStatus: RequestStatus.success));
    //       break;
    //     case ResultStatus.error:
    //       emit(state.copyWith(requestStatus: RequestStatus.failure));
    //       emit(state.copyWith(requestStatus: RequestStatus.waiting));
    //       break;
    //     case ResultStatus.none:
    //       break;
    //   }
    // }
  }

  Future<void> _loginPressed(
    LoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(requestStatus: RequestStatus.inProgress));

    var result = await _accountRepository.login(
      email: state.email.value,
      password: state.password.value,
    );
    switch (result.resultStatus) {
      case ResultStatus.success:
        var userId = result.data?.user?.id;
        var token = result.data?.token;
        if (userId != null && token != null) {}
        emit(
          state.copyWith(
            message: result.data?.message ?? '',
            requestStatus: RequestStatus.success,
          ),
        );
        break;
      case ResultStatus.error:
        emit(
          state.copyWith(
            message: result.data?.message ?? '',
            requestStatus: RequestStatus.failure,
          ),
        );
        break;
      case ResultStatus.none:
        break;
    }
    // print('error message: ${result.data?.message}');
    // print('token: ${result.data?.token}');
    // print('resultstatus: ${result.statusCode}');
    // if (result.statusCode == 201) {
    //   emit(
    //     state.copyWith(
    //       message: result.data?.message ?? '',
    //       requestStatus: RequestStatus.success,
    //     ),
    //   );
    // } else if (result.statusCode == 400 ||
    //     result.statusCode == 401 ||
    //     result.statusCode == 402) {
    //   emit(
    //     state.copyWith(
    //       message: result.data?.message ?? '',
    //       requestStatus: RequestStatus.failure,
    //     ),
    //   );
    // } else {
    //   ResultStatus.none;
    // }
  }
}
