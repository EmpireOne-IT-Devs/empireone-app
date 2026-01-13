import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login_employee/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginEmployeeBloc extends Bloc<LoginEmployeeEvent, LoginEmployeeState> {
  final AccountRepository _accountRepository;

  LoginEmployeeBloc({
    required LoginEmployeeState initialState,
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository,
       super(initialState) {
    on<EmployeeIdChanged>(_employeeIdChanged);
    on<EmployeeIdVerified>(_employeeIdVerified);
  }

  void _employeeIdChanged(
    EmployeeIdChanged event,
    Emitter<LoginEmployeeState> emit,
  ) async {
    var employeeId = state.employeeId;

    var errorType = ErrorType.none;
    if (event.employeeId.length < 8) {
      errorType = ErrorType.length;
    } else {
      errorType = ErrorType.none;
    }

    employeeId = employeeId.copyWith(
      value: event.employeeId,
      errorType: errorType,
    );
    emit(state.copyWith(employeeId: employeeId));
    // print('here $employeeId');
  }

  void _employeeIdVerified(
    EmployeeIdVerified event,
    Emitter<LoginEmployeeState> emit,
  ) async {
    var employeeId = state.employeeId;
    var result = await _accountRepository.employeeId(
      employeeId: employeeId.value,
    );
    switch (result.statusCode) {
      case ResultStatus.success:
      // eogs email get the response of the verify employee
      //put inside email
      // _accountRepository.sendOtp(email: email)
    }
  }
}
