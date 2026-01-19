abstract class ResetPasswordEvent {
  const ResetPasswordEvent();
}

class ResetNewPasswordChanged extends ResetPasswordEvent {
  final String resetNewPassword;
  const ResetNewPasswordChanged(this.resetNewPassword);
}

class ResetConfirmNewPassword extends ResetPasswordEvent {
  final String resetConfirmNewPassword;
  const ResetConfirmNewPassword(this.resetConfirmNewPassword);
}

class ResetPasswordPressed extends ResetPasswordEvent {
  const ResetPasswordPressed();
}
