import 'package:bloc/bloc.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/models/textfield_input/textfield_input.dart';
import 'package:empireone_app/pages/reset_password/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final AccountRepository _accountRepository;
  ResetPasswordBloc({
    required AccountRepository accountRepository,
    required ResetPasswordState initialState,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<ResetNewPasswordChanged>(_resetNewPasswordChanged);
    on<ResetConfirmNewPassword>(_resetConfirmNewPassword);
    on<ResetPasswordPressed>(_resetPasswordPressed);
  }

  Future<void> _resetPasswordPressed(
    ResetPasswordPressed event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(requestStatus: RequestStatus.waiting));
    emit(state.copyWith(requestStatus: RequestStatus.inProgress));
    var result = await _accountRepository.resetPassword(
      email: state.emailResetPass,
      password: state.resetNewPassword.value,
      passwordConfirmation: state.resetConfirmNewPassword.value,
    );
    print('email: ${state.emailResetPass}');
    print('resultstatus: ${result.statusCode}');
    switch (result.resultStatus) {
      case ResultStatus.success:
        emit(state.copyWith(requestStatus: RequestStatus.success));
        break;
      case ResultStatus.error:
        emit(
          state.copyWith(
            requestStatus: RequestStatus.failure,
            message: result.data.message,
          ),
        );
        break;
      case ResultStatus.none:
        break;
    }
  }

  void _resetNewPasswordChanged(
    ResetNewPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    var resetNewPassword = state.resetNewPassword;
    print('resetNewPassword : $resetNewPassword');
    var errorType = ErrorType.none;
    if (event.resetNewPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.resetNewPassword.length < 6) {
      errorType = ErrorType.length;
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
    print('resetConfrimNewPassword : $resetConfrimNewPassword');

    var errorType = ErrorType.none;
    if (event.resetConfirmNewPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.resetConfirmNewPassword.length < 6) {
      errorType = ErrorType.length;
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
