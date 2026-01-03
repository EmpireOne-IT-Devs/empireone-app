import 'package:empireone_app/pages/home_employee/view/home_employee_profile.dart';
import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeEmployeePage extends StatefulWidget {
  static const route = '/home_employee_dashboard';

  const HomeEmployeePage({super.key});

  @override
  State<HomeEmployeePage> createState() => _HomeEmployeePageState();
}

class _HomeEmployeePageState extends State<HomeEmployeePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  Widget _tabItem(Widget child, String label, {bool isSelected = false}) {
    return AnimatedContainer(
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
            style:
                GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.bodySmall,
                    )
                    .copyWith(fontSize: 10.2)
                    .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }

  final List<String> _labels = ['Home', 'Company', 'Chat', 'Profile'];
  final List<Widget> _pages = [
    HomeEmployeeHomeScreen(),
    Center(
      child: Text('Company', style: TextStyle(color: Colors.red, fontSize: 50)),
    ),
    Center(
      child: Text('Chat', style: TextStyle(color: Colors.red, fontSize: 50)),
    ),
    HomeEmployeeProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> icons = [
      SvgPicture.asset('assets/icons/home.svg'),
      SvgPicture.asset('assets/icons/company.svg'),
      SvgPicture.asset('assets/icons/chat.svg'),
      SvgPicture.asset('assets/icons/profile.svg'),
    ];

    return Scaffold(
      extendBodyBehindAppBar: false,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(173.0),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //     child: HomeEmployeeAppbar(),
      //   ),
      // ),
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: _pages[_selectedIndex],
      // body:
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topRight: Radius.circular(10),
      //       topLeft: Radius.circular(10),
      //     ),
      //   ),
      //   child: ClipRRect(
      //     borderRadius: BorderRadiusGeometry.only(
      //       topLeft: Radius.circular(10.0),
      //       topRight: Radius.circular(10.0),
      //     ),
      //     child: BottomNavigationBar(
      //       currentIndex: 0,
      //       onTap: (value) {},
      //       type: BottomNavigationBarType.fixed,
      //       backgroundColor: Color(0xFFF7F7F9),
      //       selectedIconTheme: IconThemeData(
      //         color: Theme.of(context).colorScheme.primary,
      //       ),
      //       selectedItemColor: Theme.of(context).colorScheme.primary,
      //       showSelectedLabels: true,
      //       unselectedItemColor: Theme.of(context).colorScheme.tertiary,
      //       unselectedLabelStyle: TextStyle(),
      //       items: <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/icons/home.svg'),
      //           label: 'Home',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/icons/company.svg'),
      //           label: 'Company',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/icons/chat.svg'),
      //           label: 'Chat',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/icons/profile.svg'),
      //           label: 'Profile',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 76,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(25),
          child: Container(
            color: Theme.of(context).colorScheme.inverseSurface,
            child: TabBar(
              controller: _tabController,
              onTap: (x) {
                setState(() {
                  _selectedIndex = x;
                });
              },
              labelColor: Theme.of(context).colorScheme.tertiary,
              unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
              labelStyle: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.bodySmall,
              ).copyWith(fontSize: 10.2),
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide.none,
              ),
              unselectedLabelStyle:
                  GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.bodySmall,
                      )
                      .copyWith(fontSize: 10.2)
                      .copyWith(color: Theme.of(context).colorScheme.primary),
              tabs: [
                for (int i = 0; i < icons.length; i++)
                  _tabItem(
                    icons[i],
                    _labels[i],
                    isSelected: i == _selectedIndex,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
