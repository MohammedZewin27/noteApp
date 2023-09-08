import 'package:flutter/material.dart';

import '../constants/constantForApp.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.hintText,
    this.maxLines = 1,
    super.key,
  });

  final int maxLines;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: primaryColor,

      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: primaryColor,
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: primaryColor,
              ),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primaryColor),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primaryColor),
              borderRadius: BorderRadius.circular(16))),
    );
  }
}
