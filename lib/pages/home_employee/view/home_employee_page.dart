import 'package:empireone_app/pages/home_employee/view/home_employee_persistent.dart';
import 'package:flutter/material.dart';

class HomeEmployeePage extends StatelessWidget {
  static const route = '/home_employee_dashboard';

  const HomeEmployeePage({super.key});

  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeEmployeePersistent());
    // List<Widget> icons = [
    //   SvgPicture.asset('assets/icons/home.svg'),
    //   SvgPicture.asset('assets/icons/company.svg'),
    //   SvgPicture.asset('assets/icons/chat.svg'),
    //   SvgPicture.asset('assets/icons/profile.svg'),
    // ];

    // return Scaffold(
    //   extendBodyBehindAppBar: false,
    //   backgroundColor: Theme.of(context).colorScheme.onSurface,
    //   body: _pages[_selectedIndex],
    //   bottomNavigationBar: SizedBox(
    //     width: double.infinity,
    //     height: 76,
    //     child: ClipRRect(
    //       borderRadius: BorderRadiusGeometry.circular(25),
    //       child: Container(
    //         color: Theme.of(context).colorScheme.inverseSurface,
    //         child: TabBar(
    //           controller: _tabController,
    //           onTap: (x) {
    //             setState(() {
    //               _selectedIndex = x;
    //             });
    //           },
    //           labelColor: Theme.of(context).colorScheme.tertiary,
    //           unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
    //           labelStyle: GoogleFonts.inter(
    //             textStyle: Theme.of(context).textTheme.bodySmall,
    //           ).copyWith(fontSize: 10.2),
    //           indicator: const UnderlineTabIndicator(
    //             borderSide: BorderSide.none,
    //           ),
    //           unselectedLabelStyle:
    //               GoogleFonts.inter(
    //                     textStyle: Theme.of(context).textTheme.bodySmall,
    //                   )
    //                   .copyWith(fontSize: 10.2)
    //                   .copyWith(color: Theme.of(context).colorScheme.primary),
    //           tabs: [
    //             for (int i = 0; i < icons.length; i++)
    //               _tabItem(
    //                 icons[i],
    //                 _labels[i],
    //                 isSelected: i == _selectedIndex,
    //               ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
