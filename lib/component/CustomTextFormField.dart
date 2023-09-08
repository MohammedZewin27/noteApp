import 'package:flutter/material.dart';

import '../constants/constantForApp.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primaryColor,
      decoration:  InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(
          color:primaryColor
        ),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: primaryColor,
            ),
            borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(16)
        )
      ),
    );
  }
}
