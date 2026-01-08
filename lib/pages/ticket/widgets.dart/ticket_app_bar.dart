import 'package:flutter/material.dart';

class TicketAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final double height;

  const TicketAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.actions,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // bottom: false,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            Expanded(
              child: Center(
                child: Text(title, style: const TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(width: 48), // balance leading
          ],
        ),
      ),
    );
  }
}
    //  SafeArea(
    //   child: Container(
    //     // height: kToolbarHeight,
    //     decoration: BoxDecoration(
    //       color: Colors.red,
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     child: Row(
    //       children: [
    //         IconButton(
    //           icon: const Icon(Icons.arrow_back, color: Colors.white),
    //           onPressed: () => Navigator.pop(context),
    //         ),
    //         Expanded(
    //           child: Center(
    //             child: Text(
    //               AppLocalizations.of(context)?.ticketing ?? '',
    //               style: const TextStyle(color: Colors.white),
    //             ),
    //           ),
    //         ),
    //         const SizedBox(width: 48), // balance leading
    //       ],
    //     ),
    //   ),
    // );