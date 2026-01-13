import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

class RoleButton extends StatelessWidget {
  final Widget? text;
  final VoidCallback? onPressed;
  const RoleButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(1, 3),
            color: Color(0x33000000).withValues(alpha: 0.10),
            inset: true,
          ),
          BoxShadow(
            blurRadius: 13,
            spreadRadius: 0,
            offset: Offset(0, 8),
            color: Color(0x33000000).withValues(alpha: 0.10),
            inset: false,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        child: text,
      ),
    );
  }
}
