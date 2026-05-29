import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
    required this.namabutton,
    required this.onPressed,
  });

  final String namabutton;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(namabutton),
    );
  }
}
