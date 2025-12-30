// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_employee_state.freezed.dart';

@freezed
sealed class HomeEmployeeState with _$HomeEmployeeState {
  // Added 'sealed'
  const factory HomeEmployeeState({
    @Default(0)
    int selectedIndex,
    }) = _HomeEmployeeState;
}
