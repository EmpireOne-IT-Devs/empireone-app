import 'package:empireone_app/pages/role/role.dart';
import 'package:flutter/material.dart';

class RolePage extends StatelessWidget {
  static const route = '/role';
  const RolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF1329A9), Color(0xFF49D0F4)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [RoleHeading(), RoleButtons()],
        ),
      ),
    );
  }
}
