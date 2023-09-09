import 'package:flutter/material.dart';

import '../constants/constantForApp.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.text,super.key,required this.onTap,this.isLoading=false});
final String text;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(14)
        ),

        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(child:
        isLoading? const CircularProgressIndicator():
        Text(
          text,
          style: TextStyle(
              fontSize: 20,
              fontFamily: fontsForNote,
              color: Colors.black
          ),
        ),),

      ),
    );
  }
}