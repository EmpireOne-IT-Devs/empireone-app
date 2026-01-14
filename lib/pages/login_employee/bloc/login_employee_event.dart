abstract class LoginEmployeeEvent {
  const LoginEmployeeEvent();
}

class EmployeeIdChanged extends LoginEmployeeEvent{
  final String employeeId;
  const EmployeeIdChanged(this.employeeId);
}

class EmployeeIdVerified extends LoginEmployeeEvent{
  const EmployeeIdVerified();
}
