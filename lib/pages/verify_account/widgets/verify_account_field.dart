import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyAccountField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final InputDecoration inputDecoration;
  final ValueChanged? onChanged;
  const VerifyAccountField({
    super.key,
    required this.textStyle,
    required this.textAlign,
    required this.inputDecoration,
    this.onChanged,
    required this.controller,
    required this.focusNode,
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
      onChanged: (value) => onChanged!(value),
      decoration: inputDecoration,
      controller: controller,
      focusNode: focusNode,
    );
  }
}
