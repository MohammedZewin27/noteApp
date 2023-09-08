import 'package:flutter/material.dart';

import 'CustomTextFormField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: const Column(
        children: [
          CustomTextFormField()
        ],
      ),
    );
  }
}


