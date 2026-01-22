abstract class StepperEvent {
  const StepperEvent();
}

class ContinuePressed extends StepperEvent {
  const ContinuePressed();
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
