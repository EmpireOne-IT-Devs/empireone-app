abstract class LoginEvent {
  const LoginEvent();
}

class EmailChanged extends LoginEvent {
  final String email;
  const EmailChanged(this.email);
}

class PasswordChanged extends LoginEvent {
  final String password;
  const PasswordChanged(this.password);
}

class GooglePressed extends LoginEvent {
  const GooglePressed();
}

class LoginPressed extends LoginEvent{
  const LoginPressed();
}