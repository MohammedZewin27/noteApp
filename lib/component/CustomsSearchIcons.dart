import 'package:flutter/material.dart';

class CustomsSearchIcons extends StatelessWidget {
  const CustomsSearchIcons({required this.icon,this.onPressed,
    super.key,
  });
final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.07),
      ),
      child:  GestureDetector(

        onTap:onPressed ,
        child: Icon(icon,
          size: 28,
        ),
      ),
    );
  }
}