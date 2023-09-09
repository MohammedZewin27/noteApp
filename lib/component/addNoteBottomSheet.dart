import 'package:flutter/material.dart';
import 'package:note/constants/constantForApp.dart';

import 'CustomButton.dart';
import 'CustomTextFormField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(hintText: 'title'),
            SizedBox(height: 10,),
            CustomTextFormField(hintText: 'subject',maxLines: 8,),
            SizedBox(height: 10,),
            CustomButton(text: 'save'),
            SizedBox(height: 16,),

          ],
        ),
      ),
    );
  }
}



