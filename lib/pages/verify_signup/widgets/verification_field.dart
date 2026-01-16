import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationField extends StatelessWidget {
  final TextStyle textStyle;
  final TextAlign textAlign;
  final InputDecoration inputDecoration;
  final ValueChanged? onChanged;
  // final TextEditingController controller;

  const VerificationField({
    super.key,
    required this.textAlign,
    required this.inputDecoration,
    this.onChanged, required this.textStyle,
    // required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textStyle,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1),
      ],
      keyboardType: TextInputType.number,
      textAlign: textAlign,
      onChanged: onChanged,
      decoration: inputDecoration,
      // controller: controller,
    );
  }
}
