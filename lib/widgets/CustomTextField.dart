import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool autofocus;
  final bool obscureText;
  final TextInputType keyboardType;
  final String hintText;

  CustomTextField({
    this.autofocus,
    this.obscureText,
    this.keyboardType,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: TextField(
          autofocus: autofocus,
          obscureText: obscureText,
          keyboardType: keyboardType,
          style: TextStyle(
            fontSize: 14,
            decorationColor: Colors.white,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(14),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
