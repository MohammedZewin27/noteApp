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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
              hintText: 'title',
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'subject',
            maxLines: 8,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(text: 'save',
          onTap:() {
           if(formKey.currentState!.validate()){
             formKey.currentState!.save();
           }else
           {
             autovalidateMode=AutovalidateMode.always;
             setState(() {

             });
           }
          } ,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
