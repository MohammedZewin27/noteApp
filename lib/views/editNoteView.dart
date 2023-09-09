import 'package:flutter/material.dart';
import 'package:note/component/appBarWidget.dart';

import '../component/CustomButton.dart';
import '../component/CustomTextFormField.dart';
import '../component/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const String routeName = 'EditNoteView';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:EditNoteViewBody(),
        
      ),
    );
  }
}

