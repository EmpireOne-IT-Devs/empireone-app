import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/verify_account/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyAccountBloc extends Bloc<VerifyAccountEvent, VerifyAccountState> {
  VerifyAccountBloc({required VerifyAccountState initialState})
    : super(initialState) {
    on<VerificationFieldChanged>(_verificationFieldChanged);
  }

  void _verificationFieldChanged(
    VerificationFieldChanged event,
    Emitter<VerifyAccountState> emit,
  ) {
    var verificationFields = List<TextFieldInput>.from(
      state.verificationFields,
    );
    verificationFields[event.index] = verificationFields[event.index].copyWith(
      value: event.value,
    );
    emit(state.copyWith(verificationFields: verificationFields));
    print('verification field $verificationFields');
  }
}
