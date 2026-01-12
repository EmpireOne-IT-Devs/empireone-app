import 'package:flutter/material.dart';

class CircularProgressDialog extends StatelessWidget {
  const CircularProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      // onWillPop: () async => false,
      child: CircularProgressIndicator(
        strokeWidth: 5,
        // backgroundColor: Color(0xFF3F3F46),
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
