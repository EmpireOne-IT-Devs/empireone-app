abstract class VerifyAccountEvent {
  const VerifyAccountEvent();
}

class VerificationFieldChanged extends VerifyAccountEvent {
  final int index;
  final String value;

  const VerificationFieldChanged(this.index, this.value);
}

