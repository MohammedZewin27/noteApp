import 'package:flutter/material.dart';

import '../constants/constantForApp.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    super.key,
  });

  final int maxLines;
  final String hintText;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.trim().isEmpty??true){
          return 'Field is required';
        }
        return null;
      },
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
