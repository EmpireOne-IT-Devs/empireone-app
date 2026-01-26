import 'package:bloc/bloc.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';

class StepperBloc extends Bloc<StepperEvent, StepperState> {
  final AccountRepository _accountRepository;
  StepperBloc({
    required AccountRepository accountRepository,
    required StepperState initialState,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<StepperVerificationFieldChanged>(_stepperVerificationFieldChanged);
    on<StepperVerificationScreenCreated>(_stepperVerificationScreenCreated);
    on<StepperEmployeeIdChanged>(_stepperEmployeeIdChanged);
    on<StepperEmployeeFormPressed>(_stepperEmployeeFormPressed);
    on<ContinuePressed>(_continuePressed);
    on<BackPressed>(_backPressed);
    on<CheckedBoxPressed>(_checkedBoxPressed);
    on<StepperVerificationPressed>(_stepperVerificationPressed);
  }

  Future<void> _stepperVerificationPressed(
    StepperVerificationPressed event,
    Emitter<StepperState> emit,
  ) async {
    emit(state.copyWith(requestStatusVerifyOtpStepper: RequestStatus.waiting));
    emit(
      state.copyWith(requestStatusVerifyOtpStepper: RequestStatus.inProgress),
    );
    var employee = await _accountRepository.employeeId(
      employeeId: state.employeeIdStepper.value,
    );

    var email = employee.data?.eogs;
    // print('emaillss: $email');
    var result = await _accountRepository.verifyAccount(
      // email: state.email,
      email: email ?? '',
      verificationCode: state.verificationFieldsStepper
          .map<String>((e) => e.value)
          .join(),
    );
    print('verify otp: ${result.resultStatus}');
    switch (result.resultStatus) {
      case ResultStatus.success:
        emit(
          state.copyWith(requestStatusVerifyOtpStepper: RequestStatus.success),
        );
        break;
      case ResultStatus.error:
        emit(
          state.copyWith(
            requestStatusVerifyOtpStepper: RequestStatus.failure,
            message: '',
          ),
        );
        break;
      case ResultStatus.none:
        break;
    }
  }

  void _checkedBoxPressed(CheckedBoxPressed event, Emitter<StepperState> emit) {
    emit(state.copyWith(isCheckedTermsPriv: !state.isCheckedTermsPriv));
  }

  void _backPressed(BackPressed event, Emitter<StepperState> emit) {
    if (state.currentStep > 0) {
      final backStep = state.currentStep - 1;
      emit(state.copyWith(currentStep: backStep));
    }
  }

  void _continuePressed(ContinuePressed event, Emitter<StepperState> emit) {
    if (state.currentStep < 2) {
      final nextStep = state.currentStep + 1;
      emit(state.copyWith(currentStep: nextStep));
    }
  }

  Future<void> _stepperEmployeeFormPressed(
    StepperEmployeeFormPressed event,
    Emitter<StepperState> emit,
  ) async {
    emit(state.copyWith(requestStatusSendOtpStepper: RequestStatus.waiting));
    emit(state.copyWith(requestStatusSendOtpStepper: RequestStatus.inProgress));
    // print('employeeid : ${state.employeeIdStepper}');

    var result = await _accountRepository.employeeId(
      employeeId: state.employeeIdStepper.value,
    );
    var email = result.data?.eogs;
    // print('emailsss: $email');
    var resultSendotp = await _accountRepository.sendOtp(email: email ?? '');
    print('resultStatus: ${result.resultStatus}');
    print('Sendotp status: ${resultSendotp.resultStatus}');

    switch (resultSendotp.resultStatus) {
      case ResultStatus.success:
        await _accountRepository.sendOtp(email: email ?? '');
        emit(
          state.copyWith(requestStatusSendOtpStepper: RequestStatus.success),
        );
        emit(
          state.copyWith(requestStatusSendOtpStepper: RequestStatus.success),
        );
        break;
      case ResultStatus.error:
        emit(
          state.copyWith(requestStatusSendOtpStepper: RequestStatus.failure),
        );
        break;
      case ResultStatus.none:
        break;
    }
  }

  void _stepperEmployeeIdChanged(
    StepperEmployeeIdChanged event,
    Emitter<StepperState> emit,
  ) {
    var employeeIdStepper = state.employeeIdStepper;

    var errorType = ErrorType.none;
    if (event.employeeId.length < 8) {
      errorType = ErrorType.length;
    } else {
      errorType = ErrorType.none;
    }
    employeeIdStepper = employeeIdStepper.copyWith(
      value: event.employeeId,
      errorType: errorType,
    );
    emit(state.copyWith(employeeIdStepper: employeeIdStepper));
  }

  void _stepperVerificationFieldChanged(
    StepperVerificationFieldChanged event,
    Emitter<StepperState> emit,
  ) {
    var verificationFieldsStepper = List<TextFieldInput>.from(
      state.verificationFieldsStepper,
    );
    verificationFieldsStepper[event.index] =
        verificationFieldsStepper[event.index].copyWith(value: event.value);
    emit(state.copyWith(verificationFieldsStepper: verificationFieldsStepper));
  }

  void _stepperVerificationScreenCreated(
    StepperVerificationScreenCreated event,
    Emitter<StepperState> emit,
  ) {
    emit(
      state.copyWith(
        verificationStepInitialized: true,
        verificationFieldsStepper: const [
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
