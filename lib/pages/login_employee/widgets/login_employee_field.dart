import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginEmployeeField extends StatelessWidget {
  final String hintText;
  final ValueChanged? onChanged;
  final Widget prefixIcon;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final List<TextInputFormatter>?  textInputFormatter;
  const LoginEmployeeField({
    super.key,
    required this.hintText,
    this.onChanged,
    required this.prefixIcon,
    required this.textInputAction, required this.textInputType, required this.textInputFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: textInputFormatter,
      keyboardType: textInputType,
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
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: prefixIcon,
        ),
        isDense: true,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 20,
          minHeight: 20,
        ),
      ),
    );
  }
}
