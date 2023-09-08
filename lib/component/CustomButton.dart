import 'package:flutter/material.dart';

import '../constants/constantForApp.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(14)
      ),

      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(child: Text(
        'save',
        style: TextStyle(
            fontSize: 20,
            fontFamily: fontsForNote,
            color: Colors.black
        ),
      ),),

    );
  }
}