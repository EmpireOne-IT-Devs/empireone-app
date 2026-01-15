import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/verify_account/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyAccountBloc extends Bloc<VerifyAccountEvent, VerifyAccountState> {
  final AccountRepository _accountRepository;
  VerifyAccountBloc({
    required VerifyAccountState initialState,
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<VerificationFieldChanged>(_verificationFieldChanged);
    on<VerificationScreenCreated>(_verificationScreenCreated);
    on<VerifyAccountPressed>(_verifyAccountPressed);
  }

  void _verificationFieldChanged(
    VerificationFieldChanged event,
    Emitter<VerifyAccountState> emit,
  ) {
    var verificationFields = List<TextFieldInput>.from(
      state.verificationFields,
    );
    verificationFields[event.index] = verificationFields[event.index].copyWith(
      value: event.value,
    );
    emit(state.copyWith(verificationFields: verificationFields));
    print('verification field $verificationFields');
  }

  void _verificationScreenCreated(
    VerificationScreenCreated event,
    Emitter<VerifyAccountState> emit,
  ) {
    emit(
      state.copyWith(
        verificationFields: const [
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

  Future<void> _verifyAccountPressed(
    VerifyAccountPressed event,
    Emitter<VerifyAccountState> emit,
  ) async {
    emit(state.copyWith(requestStatus: RequestStatus.waiting));
    emit(state.copyWith(requestStatus: RequestStatus.inProgress));
    var result = await _accountRepository.verifyAccount(
      email: state.email,
      verificationCode: state.verificationFields
          .map<String>((e) => e.value)
          .join(),
    );
    print('verifyaccount email: ${state.email}');
    print('here result verifyaccount status : ${result.statusCode}');
    switch (result.resultStatus) {
      case ResultStatus.success:
        // var accountId = result.data?.account?.id;
        // var token = result.data?.accessToken;
        // if (accountId != null && token != null) {
        //   await _accountRepository.save(
        //     id: accountId,
        //     token: token,
        //   );
        // }
        print('successs');
        emit(state.copyWith(requestStatus: RequestStatus.success));
        break;
      case ResultStatus.error:
        emit(
          state.copyWith(
            requestStatus: RequestStatus.failure,
            message: result.data?.message ?? '',
          ),
        );
        emit(state.copyWith(requestStatus: RequestStatus.waiting));
        break;
      case ResultStatus.none:
        break;
    }
  }
}
