abstract class SignupEvent {
  const SignupEvent();
}

class SignupEmailChanged extends SignupEvent {
  final String signupEmail;
  SignupEmailChanged(this.signupEmail);
}

class SignupPasswordChanged extends SignupEvent {
  final String signupPassword;
  SignupPasswordChanged(this.signupPassword);
}

class SignupConfirmPasswordChanged extends SignupEvent {
  final String signupConfirmPassword;
  SignupConfirmPasswordChanged(this.signupConfirmPassword);
}

class SignupAgreementCheckBoxPressed extends SignupEvent {
  final bool isChecked;
  SignupAgreementCheckBoxPressed(this.isChecked);
}
