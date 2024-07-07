import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField(
      {super.key,
      required this.label,
      required this.controller,
      this.obscureText = false});

  final String label;
  final TextEditingController controller;
  final bool obscureText;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_showPassword,
      controller: widget.controller,
      decoration: InputDecoration(
        label: Text(widget.label),
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
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xFFFF2B85),
                ),
                onPressed: () => setState(() => _showPassword = !_showPassword),
              )
            : const SizedBox(),
      ),
    );
  }
}
