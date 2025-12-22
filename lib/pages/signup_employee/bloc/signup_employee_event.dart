abstract class SignupEmployeeEvent {
  const SignupEmployeeEvent();
}

class EmployeeIdChanged extends SignupEmployeeEvent {
  final String employeeId;
  EmployeeIdChanged(this.employeeId);
}

class EmployeePasswordChanged extends SignupEmployeeEvent {
  final String signupEmployeePassword;
  EmployeePasswordChanged(this.signupEmployeePassword);
}

class SignupEmployeeConfirmPassword extends SignupEmployeeEvent {
  final String signupEmployeeConfirmPassword;
  SignupEmployeeConfirmPassword(this.signupEmployeeConfirmPassword);
}

class AgreementCheckBoxPressed extends SignupEmployeeEvent {
  final bool isChecked;
  AgreementCheckBoxPressed(this.isChecked);
}
