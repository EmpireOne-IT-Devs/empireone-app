abstract class VerifyIdentityEvent {
  const VerifyIdentityEvent();
}

class VerificationFieldVerIdentityChanged extends VerifyIdentityEvent {
  final int index;
  final String value;
  const VerificationFieldVerIdentityChanged(this.index, this.value);
}

class VerifyIdentityScreenCreated extends VerifyIdentityEvent {
  const VerifyIdentityScreenCreated();
}

class VerifyIdentitytPressed extends VerifyIdentityEvent {
  const VerifyIdentitytPressed();
}

class ResendVerificationCodePressed extends VerifyIdentityEvent {
  const ResendVerificationCodePressed();
}
