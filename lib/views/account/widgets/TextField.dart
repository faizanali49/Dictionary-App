import 'package:dictionaryapp/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? labelText;
  final double? width;
  final double? height;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  const CustomTextfield({
    super.key,
    this.labelText,
    this.width,
    this.height,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.only(
        // left: 20,
        // right: 20,
        bottom: 10,
        // top: 10,
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText ?? 'Email',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
