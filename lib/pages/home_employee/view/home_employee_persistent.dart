import 'package:empireone_app/pages/home_employee/view/home_employee_profile.dart';
import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeEmployeePersistent extends StatefulWidget {
  const HomeEmployeePersistent({super.key});

  @override
  State<HomeEmployeePersistent> createState() => _HomeEmployeePersistentState();
}

class _HomeEmployeePersistentState extends State<HomeEmployeePersistent> {
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  final List<String> _labels = ['Home', 'Company', 'Chat', 'Profile'];

  late final List<Widget> _icons = [
    SvgPicture.asset('assets/icons/home.svg'),
    SvgPicture.asset('assets/icons/company.svg'),
    SvgPicture.asset('assets/icons/chat.svg'),
    SvgPicture.asset('assets/icons/profile.svg'),
  ];

  List<Widget> _pages() => [
    HomeEmployeeHomeScreen(),
    const Center(
      child: Text('Company', style: TextStyle(color: Colors.red, fontSize: 50)),
    ),
    const Center(
      child: Text('Chat', style: TextStyle(color: Colors.red, fontSize: 50)),
    ),
    HomeEmployeeProfile(),
  ];

  Widget _buildTabNavigator(Widget screen) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (_) => screen);
      },
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return List.generate(_icons.length, (i) {
      return PersistentBottomNavBarItem(
        icon: tabItem(
          context,
          _icons[i],
          _labels[i],
          isSelected: _controller.index == i,
        ),
        inactiveIcon: tabItem(
          context,
          _icons[i],
          _labels[i],
          isSelected: false,
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      );
    });
  }

  Widget tabItem(
    BuildContext context,
    Widget child,
    String label, {
    bool isSelected = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: AnimatedContainer(
        width: 58,
        height: 51,
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 500),
        decoration: !isSelected
            ? null
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.inverseSurface,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(1, 3),
                    color: Color(0x33000000),
                    inset: true,
                  ),
                  BoxShadow(
                    blurRadius: 13,
                    spreadRadius: 0,
                    offset: Offset(0, 8),
                    color: Color(0x33000000),
                    inset: false,
                  ),
                ],
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child,
            Text(
              label,
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.bodySmall,
                fontSize: 10.2,
                color: !isSelected
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _pages(),
      items: _navBarsItems(context),
      // isVisible: false,
      hideNavigationBarWhenKeyboardAppears: true,
      confineToSafeArea: true,
      bottomScreenMargin: 0,
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      navBarHeight: 76,
      decoration: NavBarDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        colorBehindNavBar: Colors.transparent,
      ),
      navBarStyle: NavBarStyle.style6,
      margin: EdgeInsets.symmetric(horizontal: 8),
      onItemSelected: (_) => setState(() {}),
    );
  }
}
