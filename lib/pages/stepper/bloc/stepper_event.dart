abstract class StepperEvent {
  const StepperEvent();
}

class CheckedBoxPressed extends StepperEvent {
  final bool isChecked;
  const CheckedBoxPressed(this.isChecked);
}

class ContinuePressed extends StepperEvent {
  const ContinuePressed();
}

class BackPressed extends StepperEvent {
  const BackPressed();
}

class StepperVerificationFieldChanged extends StepperEvent {
  final int index;
  final String value;
  const StepperVerificationFieldChanged(this.index, this.value);
}

class StepperVerificationScreenCreated extends StepperEvent {
  const StepperVerificationScreenCreated();
}

class StepperVerificationPressed extends StepperEvent {
  const StepperVerificationPressed();
}

class ResendVerificationCodePressed extends StepperEvent {
  const ResendVerificationCodePressed();
}

class StepperEmployeeIdChanged extends StepperEvent {
  final String employeeId;
  const StepperEmployeeIdChanged(this.employeeId);
}

class StepperEmployeeFormPressed extends StepperEvent {
  const StepperEmployeeFormPressed();
}

class StepperVerifyCodePressed extends StepperEvent {
  const StepperVerifyCodePressed();
}
