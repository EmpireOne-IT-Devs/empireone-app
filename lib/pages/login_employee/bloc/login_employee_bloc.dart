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
    on<EmployeeIdVerifiedPressed>(_employeeIdVerifiedPressed);
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
  }

  void _employeeIdVerifiedPressed(
    EmployeeIdVerifiedPressed event,
    Emitter<LoginEmployeeState> emit,
  ) async {
    emit(state.copyWith(requestStatusSendOtp: RequestStatus.waiting));
    emit(state.copyWith(requestStatusSendOtp: RequestStatus.inProgress));
    var employeeId = state.employeeId;
    var result = await _accountRepository.employeeId(
      employeeId: employeeId.value,
    );
    // print('result $result');
    // print('here data bloc: ${result.data}');
    // print('eogs ${result.data?.eogs}');
    // print('status code bloc: ${result.statusCode}');
    var eogsEmail = result.data?.eogs;
    if (eogsEmail != null) {
      emit(state.copyWith(eogsEmail: eogsEmail));
      switch (result.resultStatus) {
        case ResultStatus.success:
          _accountRepository.sendOtp(email: eogsEmail);
          emit(
            state.copyWith(
              requestStatus: RequestStatus.success,
              requestStatusSendOtp: RequestStatus.success,
              eogsEmail: eogsEmail,
            ),
          );
          break;
        case ResultStatus.error:
          emit(
            state.copyWith(
              requestStatus: RequestStatus.failure,
              requestStatusSendOtp: RequestStatus.failure,
            ),
          );
          break;
        case ResultStatus.none:
          break;
      }
      // if (result.statusCode == 200) {
      //   _accountRepository.sendOtp(email: eogsEmail);
      //   emit(
      //     state.copyWith(
      //       requestStatusSendOtp: RequestStatus.success,
      //       requestStatus: RequestStatus.success,
      //       eogsEmail: eogsEmail,
      //     ),
      //   );
      // } else {
      //   emit(
      //     state.copyWith(
      //       requestStatusSendOtp: RequestStatus.failure,
      //       message: state.message,
      //     ),
      //   );
      // }
    } else {
      
    }
    // print('eogsemail bloc: $eogsEmail');

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
