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
    emit(state.copyWith(requestStatus: RequestStatus.waiting));
    emit(state.copyWith(requestStatus: RequestStatus.inProgress));
    var emailForgotPassVal = state.emailForgotPassVal.value;
    print('here1 $emailForgotPassVal');
    var result = await _accountRepository.forgotPassword(
      email: state.emailForgotPassVal.value,
    );
    print('here2 $emailForgotPassVal');
    print('resultStatus ${result.resultStatus}');
    switch (result.resultStatus) {
      case ResultStatus.success:
        print('emailforgot: ${state.emailForgotPassVal.value}');
        print('emailforgot: ${result.resultStatus}');
        emit(state.copyWith(requestStatus: RequestStatus.success));
        break;
      case ResultStatus.error:
        print('error: ${result.data}');
        emit(
          state.copyWith(
            requestStatus: RequestStatus.failure,
            message: result.data,
          ),
        );
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
    } else {
      errorType = ErrorType.none;
    }

    emailForgotPassVal = emailForgotPassVal.copyWith(
      value: event.emailForgotPassVal,
      errorType: errorType,
    );
    emit(state.copyWith(emailForgotPassVal: emailForgotPassVal));
  }
}
