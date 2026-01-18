import 'package:empireone_app/models/result/result.dart';
import 'package:empireone_app/models/textfield_input/textfield_input.dart';
import 'package:empireone_app/pages/forgot_password/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final AccountRepository _accountRepository;
  ForgotPasswordBloc({
    required AccountRepository accountRepository,
    required ForgotPasswordState initialState,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<EmailForgotPassValChanged>(_emailForgotPassValChanged);
    on<SendVerificationCodePressed>(_sendVerificationCodePressed);
  }

  Future<void> _sendVerificationCodePressed(
    SendVerificationCodePressed event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    var result = await _accountRepository.forgotPassword(
      email: state.emailForgotPassVal.value,
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
  }

  void _emailForgotPassValChanged(
    EmailForgotPassValChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    var emailForgotPassVal = state.emailForgotPassVal;

    var errorType = ErrorType.none;
    if (event.emailForgotPassVal.isEmpty) {
      errorType = ErrorType.none;
    } else if (event.emailForgotPassVal.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[a-z]').hasMatch(event.emailForgotPassVal)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(
      r'[!@#\$%^&*(),.?":{}|<>]',
    ).hasMatch(event.emailForgotPassVal)) {
      errorType = ErrorType.specialCharacter;
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(event.emailForgotPassVal)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }

    emailForgotPassVal = emailForgotPassVal.copyWith(
      value: event.emailForgotPassVal,
      errorType: errorType,
    );
    print('val : $emailForgotPassVal');
    emit(state.copyWith(emailForgotPassVal: emailForgotPassVal));
  }
}
