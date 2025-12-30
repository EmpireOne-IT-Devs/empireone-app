import 'package:bloc/bloc.dart';
import 'package:empireone_app/pages/home_employee/bloc/bloc.dart';

class HomeEmployeeBloc extends Bloc<HomeEmployeeEvent, HomeEmployeeState> {
  HomeEmployeeBloc({required HomeEmployeeState initialState})
    : super(initialState) {
    // on<SelectedIndex>(_selectedIndex);
  }

  // void _selectedIndex(){

  // } 
}
