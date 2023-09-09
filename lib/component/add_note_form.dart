import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/model/noteModel.dart';

import 'CustomButton.dart';
import 'CustomTextFormField.dart';

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
          CustomButton(
            text: 'save',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel noteModel = NoteModel(
                    title: title!,
                    subtitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
