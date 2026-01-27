import 'package:bloc/bloc.dart';
import 'package:empireone_app/pages/home_employee/bloc/bloc.dart';
import 'package:empireone_app/repositories/account_repository.dart';

class HomeEmployeeBloc extends Bloc<HomeEmployeeEvent, HomeEmployeeState> {
  final AccountRepository _accountRepository;
  HomeEmployeeBloc({
    required AccountRepository accountRepository,
    required HomeEmployeeState initialState})
    : 
    _accountRepository = accountRepository,
    super(initialState) {
    on<SelectedIndex>(_selectedIndex);
    on<LogoutPressed>(_logoutPressed);

  }

  void _selectedIndex(SelectedIndex event, Emitter<HomeEmployeeState> emit){
    emit(state.copyWith(selectedIndex: state.selectedIndex));
  } 

  Future<void> _logoutPressed(LogoutPressed event, Emitter<HomeEmployeeState> emit) async{
    

  }
}
