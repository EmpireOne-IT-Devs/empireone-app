abstract class ForgotPasswordEvent {
  const ForgotPasswordEvent();
}

class EmailForgotPassValChanged extends ForgotPasswordEvent {
  final String emailForgotPassVal;
  const EmailForgotPassValChanged(this.emailForgotPassVal);
}

class SendVerificationCodePressed extends ForgotPasswordEvent {
  const SendVerificationCodePressed();
}
