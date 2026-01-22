import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StepperVerificationField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final InputDecoration inputDecoration;
  final ValueChanged? onChanged;
  const StepperVerificationField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.textStyle,
    required this.textAlign,
    required this.inputDecoration,
    this.onChanged,
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
    ;
  }
}
