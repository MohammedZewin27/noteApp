import 'package:flutter/material.dart';

class CustomsSearchIcons extends StatelessWidget {
  const CustomsSearchIcons({
    super.key,
  });

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
      child: const Icon(Icons.search,

        size: 28,
      ),
    );
  }
}