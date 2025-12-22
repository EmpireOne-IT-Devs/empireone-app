import 'package:flutter/material.dart';

class VerifyAccountAppbar extends StatelessWidget {
  const VerifyAccountAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: Image.asset(
            "assets/images/buttonback.png",
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
