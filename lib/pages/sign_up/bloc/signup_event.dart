abstract class SignupEvent {
  const SignupEvent();
}

class NameChanged extends SignupEvent {
  final String name;
  const NameChanged(this.name);
}

class SignupEmailChanged extends SignupEvent {
  final String signupEmail;
  const SignupEmailChanged(this.signupEmail);
}

class SignupPasswordChanged extends SignupEvent {
  final String signupPassword;
  const SignupPasswordChanged(this.signupPassword);
}

class SignupConfirmPasswordChanged extends SignupEvent {
  final String signupConfirmPassword;
  const SignupConfirmPasswordChanged(this.signupConfirmPassword);
}

class SignupAgreementCheckBoxPressed extends SignupEvent {
  final bool isChecked;
  const SignupAgreementCheckBoxPressed(this.isChecked);
}

class SignupPressed extends SignupEvent {
  const SignupPressed();
}

class GoogleSignupPressed extends SignupEvent {
  const GoogleSignupPressed();
}
