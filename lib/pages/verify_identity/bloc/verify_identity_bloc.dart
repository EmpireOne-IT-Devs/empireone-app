import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/verify_identity/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyIdentityBloc
    extends Bloc<VerifyIdentityEvent, VerifyIdentityState> {
  final AccountRepository _accountRepository;
  VerifyIdentityBloc({
    required AccountRepository accountRepository,
    required VerifyIdentityState initialState,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<VerificationFieldVerIdentityChanged>(
      _verificationFieldVerIdentityChanged,
    );
    on<VerifyIdentityScreenCreated>(_verifyIdentityScreenCreated);
    on<VerifyIdentitytPressed>(_verifyIdentityPressed);
  }

  Future<void> _verifyIdentityPressed(
    VerifyIdentitytPressed event,
    Emitter<VerifyIdentityState> emit,
  ) async {
    emit(state.copyWith(requestStatus: RequestStatus.waiting));
    emit(state.copyWith(requestStatus: RequestStatus.inProgress));
    var result = await _accountRepository.forgotPasswordVerifyOtp(
      otp: state.verificationFieldsVerIdentity
          .map<String>((e) => e.value)
          .join(),
      email: state.emailForgotPassVal,
    );
    switch (result.resultStatus) {
      case ResultStatus.success:
        emit(state.copyWith(requestStatus: RequestStatus.success));
        break;
      case ResultStatus.error:
        emit(
          state.copyWith(
            requestStatus: RequestStatus.failure,
            message: result.data ?? '',
          ),
        );
        break;
      case ResultStatus.none:
        break;
    }
  }

  void _verificationFieldVerIdentityChanged(
    VerificationFieldVerIdentityChanged event,
    Emitter<VerifyIdentityState> emit,
  ) {
    var verificationFields = List<TextFieldInput>.from(
      state.verificationFieldsVerIdentity,
    );
    verificationFields[event.index] = verificationFields[event.index].copyWith(
      value: event.value,
    );
    emit(state.copyWith(verificationFieldsVerIdentity: verificationFields));
  }

  void _verifyIdentityScreenCreated(
    VerifyIdentityScreenCreated event,
    Emitter<VerifyIdentityState> emit,
  ) {
    emit(
      state.copyWith(
        verificationFieldsVerIdentity: const [
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
        ],
      ),
    );
  }
}
