import 'package:bloc/bloc.dart';
import 'package:empireone_app/models/textfield_input/textfield_input.dart';
import 'package:empireone_app/pages/signup_employee/bloc/bloc.dart';

class SignupEmployeeBloc
    extends Bloc<SignupEmployeeEvent, SignupEmployeeState> {
  SignupEmployeeBloc({required SignupEmployeeState initialState})
    : super(initialState) {
    on<EmployeeIdChanged>(_employeeIdChanged);
    on<EmployeePasswordChanged>(_employeePasswordChanged);
    on<SignupEmployeeConfirmPassword>(_signupEmployeeConfirmPassword);
    on<AgreementCheckBoxPressed>(_agreementCheckBoxPressed);
  }

  void _employeeIdChanged(
    EmployeeIdChanged event,
    Emitter<SignupEmployeeState> emit,
  ) {
    var employeeId = state.employeeId;

    var errorType = ErrorType.empty;
    if (event.employeeId.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.employeeId.length < 6) {
      errorType = ErrorType.length;
    } else {
      errorType = ErrorType.none;
    }
    employeeId = employeeId.copyWith(
      value: event.employeeId,
      errorType: errorType,
    );
    emit(state.copyWith(employeeId: employeeId));
  }

  void _employeePasswordChanged(
    EmployeePasswordChanged event,
    Emitter<SignupEmployeeState> emit,
  ) {
    var signupEmployeePassword = state.signupEmployeePassword;

    var errorType = ErrorType.empty;
    if (event.signupEmployeePassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.signupEmployeePassword.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(r'[a-z]').hasMatch(event.signupEmployeePassword)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(r'[A-Z]').hasMatch(event.signupEmployeePassword)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(r'[0-9]').hasMatch(event.signupEmployeePassword)) {
      errorType = ErrorType.digitNumber;
    } else if (!RegExp(
      r'[!@#\$%^&*(),.?":{}|<>]',
    ).hasMatch(event.signupEmployeePassword)) {
      errorType = ErrorType.specialCharacter;
    } else {
      errorType = ErrorType.none;
    }
    signupEmployeePassword = signupEmployeePassword.copyWith(
      value: event.signupEmployeePassword,
      errorType: errorType,
    );
    emit(state.copyWith(signupEmployeePassword: signupEmployeePassword));
  }

  void _signupEmployeeConfirmPassword(
    SignupEmployeeConfirmPassword event,
    Emitter<SignupEmployeeState> emit,
  ) {
    var signupEmployeeConfirmPassword = state.signupEmployeeConfirmPassword;

    var errorType = ErrorType.empty;
    if (event.signupEmployeeConfirmPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else if (event.signupEmployeeConfirmPassword.length < 6) {
      errorType = ErrorType.length;
    } else if (!RegExp(
      r'[a-z]',
    ).hasMatch(event.signupEmployeeConfirmPassword)) {
      errorType = ErrorType.lowercaseLetter;
    } else if (!RegExp(
      r'[A-Z]',
    ).hasMatch(event.signupEmployeeConfirmPassword)) {
      errorType = ErrorType.uppercaseLetter;
    } else if (!RegExp(
      r'[0-9]',
    ).hasMatch(event.signupEmployeeConfirmPassword)) {
      errorType = ErrorType.digitNumber;
    } else if (!RegExp(
      r'[!@#\$%^&*(),.?":{}|<>]',
    ).hasMatch(event.signupEmployeeConfirmPassword)) {
      errorType = ErrorType.specialCharacter;
    } else {
      errorType = ErrorType.none;
    }
    signupEmployeeConfirmPassword = signupEmployeeConfirmPassword.copyWith(
      value: event.signupEmployeeConfirmPassword,
      errorType: errorType,
    );
    emit(
      state.copyWith(
        signupEmployeeConfirmPassword: signupEmployeeConfirmPassword,
      ),
    );
  }

  void _agreementCheckBoxPressed(
    AgreementCheckBoxPressed event,
    Emitter<SignupEmployeeState> emit,
  ) {
    emit(state.copyWith(isChecked: !state.isChecked));
  }
}
