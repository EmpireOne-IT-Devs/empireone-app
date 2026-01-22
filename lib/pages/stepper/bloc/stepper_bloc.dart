import 'package:bloc/bloc.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/stepper/bloc/bloc.dart';

class StepperBloc extends Bloc<StepperEvent, StepperState> {
  StepperBloc({required StepperState initialState}) : super(initialState) {
    on<ContinuePressed>(_continuePressed);
    on<StepperVerificationFieldChanged>(_stepperVerificationFieldChanged);
    on<StepperVerificationScreenCreated>(_stepperVerificationScreenCreated);
  }

  Future<void> _continuePressed(
    ContinuePressed event,
    Emitter<StepperState> emit,
  ) async {}

  void _stepperVerificationFieldChanged(
    StepperVerificationFieldChanged event,
    Emitter<StepperState> emit,
  ) {
    var verificationFieldsStepper = List<TextFieldInput>.from(
      state.verificationFieldsStepper,
    );
    verificationFieldsStepper[event.index] =
        verificationFieldsStepper[event.index].copyWith(value: event.value);
    emit(state.copyWith(verificationFieldsStepper: verificationFieldsStepper));
  }

  void _stepperVerificationScreenCreated(
    StepperVerificationScreenCreated event,
    Emitter<StepperState> emit,
  ) {
    emit(
      state.copyWith(
        verificationFieldsStepper: const [
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
          TextFieldInput(),
        ],
      ),
    );
  }
}
