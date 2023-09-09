import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'CustomTextFormField.dart';
import 'appBarWidget.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Column(
        children: [
          AppBarWidget(title:  'Editing',icon: Icons.check),
          SizedBox(height: 15,),
          CustomTextFormField(hintText: 'title'),
          SizedBox(height: 10,),
          CustomTextFormField(hintText: 'subject',maxLines: 8,),
          SizedBox(height: 10,),
          CustomButton(text: 'Edit'),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}