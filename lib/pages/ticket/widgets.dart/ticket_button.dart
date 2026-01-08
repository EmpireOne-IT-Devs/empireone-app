import 'package:flutter/material.dart';

class TicketButton extends StatelessWidget {
  const TicketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(child: Text('data'), onPressed: () {}),
    );
  }
}
