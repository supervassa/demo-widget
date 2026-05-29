import 'package:flutter/material.dart';

class WidgetTextfield extends StatelessWidget {
  const WidgetTextfield({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.keyboardType,
    this.obscureText,
    this.suffixIcon
  });

  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
        suffixIcon: suffixIcon
      ),
      controller: textEditingController,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
    );
  }
}
