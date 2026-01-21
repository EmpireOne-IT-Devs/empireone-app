import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowDialogError extends StatelessWidget {
  final String message;
  final String text;
  const ShowDialogError({super.key, required this.message, required this.text});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AlertDialog(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: colorScheme.inverseSurface,
      title: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Theme.of(context).colorScheme.primary,
            size: 28,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onTertiary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      content: Text(
        message,
        style: GoogleFonts.kumbhSans(
          textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          style: TextButton.styleFrom(foregroundColor: colorScheme.onTertiary),
          child: Text(
            'OK',
            style:
                GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.labelSmall,
                    )
                    .copyWith(fontSize: 15)
                    .copyWith(color: Theme.of(context).colorScheme.onTertiary),
          ),
        ),
      ],
    );
  }
}
