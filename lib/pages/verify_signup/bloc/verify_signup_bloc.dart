import 'package:empireone_app/models/textfield_input/textfield_input.dart';
import 'package:empireone_app/pages/verify_signup/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifySignupBloc extends Bloc<VerifySignupEvent, VerifySignupState> {
  final AccountRepository _accountRepository;
  VerifySignupBloc({
    required VerifySignupState initialState,
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<VerifySignupFieldChanged>(_verifySignupFieldChanged);
    on<VerifySignupScreenCreated>(_verifySignupScreenCreated);
    on<VerifySignupOtpPressed>(_verifySignupOtpPressed);
  }

  void _verifySignupFieldChanged(
    VerifySignupFieldChanged event,
    Emitter<VerifySignupState> emit,
  ) {
    var verifyFieldsSignup = List<TextFieldInput>.from(
      state.verificationFieldsSignup,
    );
    verifyFieldsSignup[event.index] = verifyFieldsSignup[event.index].copyWith(
      value: event.value,
    );
    print('bloc $verifyFieldsSignup');
    emit(state.copyWith(verificationFieldsSignup: verifyFieldsSignup));
  }

  void _verifySignupScreenCreated(
    VerifySignupScreenCreated event,
    Emitter<VerifySignupState> emit,
  ) {
    emit(
      state.copyWith(
        verificationFieldsSignup: const [
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

  Future<void> _verifySignupOtpPressed(
    VerifySignupOtpPressed event,
    Emitter<VerifySignupState> emit,
  ) async {
    var result = await _accountRepository.jobSeekerVerifyOtp(
      name: state.name,
      email: state.signupEmail,
      password: state.signupPassword,
      passwordConfirmation: state.signupConfirmPassword,
      verificationCodeSignup: state.verificationFieldsSignup
          .map<String>((e) => e.value)
          .join(),
    );
    print('status code: ${result.resultStatus}');
    print('status code: ${result.statusCode}');
  }
}
