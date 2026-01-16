abstract class VerifySignupEvent {
  const VerifySignupEvent();
}

class VerifySignupFieldChanged extends VerifySignupEvent {
  final int index;
  final String value;
  const VerifySignupFieldChanged(this.index, this.value);
}

class VerifySignupScreenCreated extends VerifySignupEvent {
  const VerifySignupScreenCreated();
}

class VerifySignupOtpPressed extends VerifySignupEvent {
  const VerifySignupOtpPressed();
}
