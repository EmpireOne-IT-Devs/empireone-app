import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyIdentityAppbar extends StatelessWidget {
  const VerifyIdentityAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
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
