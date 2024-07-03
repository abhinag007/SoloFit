import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solo_fit/core/constants/colors_constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const CustomTextField({super.key, 
    required this.controller,
    required this.labelText,
    this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: colorWhite,
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        filled: true,
        fillColor: Colors.white12,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gapPadding: 6,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gapPadding: 6,
          borderSide: BorderSide(
            width: 1.0,
            color: colorWhite, // Change to your desired border color
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gapPadding: 6,
          borderSide: BorderSide(
            width: 1.0,
            color: colorWhite, // Change to your desired border color
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        hintStyle: const TextStyle(fontSize: 24, color: colorWhite),
        labelStyle: const TextStyle(fontSize: 24, color: colorWhite),
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      style: GoogleFonts.lato(
        color: colorWhite,
        fontSize: 18,
        height: 28 / 28,
      ),
    );
  }
}
