import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabeledTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged? onChanged;
  final Widget prefixIcon;
  final TextInputAction textInputAction;
  const LabeledTextField({
    super.key,
    this.onChanged,
    required this.hintText,
    required this.prefixIcon,
    required this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => onChanged?.call(value),
      textAlign: TextAlign.left,
      textInputAction: textInputAction,
      style: GoogleFonts.mada(
        color: Theme.of(context).colorScheme.onPrimary,
        textStyle: Theme.of(context).textTheme.bodyLarge,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.bodyMedium,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
