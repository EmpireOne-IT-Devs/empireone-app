abstract class HomeEmployeeEvent {
  const HomeEmployeeEvent();
}

class SelectedIndex extends HomeEmployeeEvent {
  final int selectedIndex;
  const SelectedIndex(this.selectedIndex);
}

