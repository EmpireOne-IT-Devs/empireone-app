import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:flutter/material.dart';

class HomeEmployeeHomeScreen extends StatelessWidget {
  const HomeEmployeeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(173.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: HomeEmployeeAppbar(),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: HomeEmployeeMenus(),
            ),
          ),
        ],
      ),
    );
  }
}
