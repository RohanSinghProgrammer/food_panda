import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key,
      required this.label,
      required this.controller,
      this.obscureText = false});

  final String label;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFF2B85),
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
