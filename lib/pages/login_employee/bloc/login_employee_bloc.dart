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
    print('hereemploy id: $employeeId');
  }

  void _employeeIdVerified(
    EmployeeIdVerified event,
    Emitter<LoginEmployeeState> emit,
  ) async {
    emit(state.copyWith(requestStatusSendOtp: RequestStatus.waiting));
    emit(state.copyWith(requestStatusSendOtp: RequestStatus.inProgress));
    var employeeId = state.employeeId;
    var result = await _accountRepository.employeeId(
      employeeId: employeeId.value,
    );
    print('result $result');
    print('here data bloc: ${result.data}');
    print('eogs ${result.data?.eogs}');
    print('status code bloc: ${result.statusCode}');
    var eogsEmail = result.data?.eogs;
    if (result.statusCode == 200 && eogsEmail != null) {
      _accountRepository.sendOtp(email: eogsEmail);
      emit(
        state.copyWith(
          requestStatusSendOtp: RequestStatus.success,
          requestStatus: RequestStatus.success,
        ),
      );
    } else {
      emit(
        state.copyWith(
          requestStatusSendOtp: RequestStatus.failure,
          message: state.message,
        ),
      );
    }
    // switch (result.statusCode) {
    //   // ignore: constant_pattern_never_matches_value_type
    //   case ResultStatus.success:
    //     emit(state.copyWith(requestStatusSendOtp: RequestStatus.inProgress));
    //     _accountRepository.sendOtp(email: eogsEmail ?? '');
    //     emit(
    //       state.copyWith(
    //         requestStatusSendOtp: RequestStatus.success,
    //         requestStatus: RequestStatus.success,
    //       ),
    //     );
    //     break;
    //   // ignore: constant_pattern_never_matches_value_type
    //   case ResultStatus.error:
    //     emit(
    //       state.copyWith(
    //         message: result.data?.message ?? '',
    //         requestStatus: RequestStatus.failure,
    //       ),
    //     );
    //     break;
    //   // ignore: constant_pattern_never_matches_value_type
    //   case ResultStatus.none:
    //     break;
    // }
  }
}
