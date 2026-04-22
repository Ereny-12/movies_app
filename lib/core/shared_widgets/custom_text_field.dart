import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/colors_manager.dart';


class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;

  const CustomTextField(
      {super.key, required this.hint, required this.icon, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: ColorsManager.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: ColorsManager.white, fontSize: 14),
        prefixIcon: Icon(icon, color: ColorsManager.white, size: 20),
        filled: true,
        fillColor: Colors.white10,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        suffixIcon: isPassword ? const Icon(
            Icons.visibility_off, color:ColorsManager.white) : null,
      ),
    );
  }
}