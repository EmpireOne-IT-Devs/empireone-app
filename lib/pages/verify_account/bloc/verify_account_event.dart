abstract class VerifyAccountEvent {
  const VerifyAccountEvent();
}

class VerificationFieldChanged extends VerifyAccountEvent {
  final int index;
  final String value;
  const VerificationFieldChanged(this.index, this.value);
}

class VerificationScreenCreated extends VerifyAccountEvent {
  const VerificationScreenCreated();
}

class VerifyAccountPressed extends VerifyAccountEvent {
  const VerifyAccountPressed();
}

class ResendVerificationCodePressed extends VerifyAccountEvent {
  const ResendVerificationCodePressed();
}
