import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/model/noteModel.dart';

import 'CustomButton.dart';
import 'CustomTextFormField.dart';
import 'appBarWidget.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    NoteModel noteEdit =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Column(
        children: [
          AppBarWidget(
              title: 'Editing',
              icon: Icons.check,
              onPressed: () {
                noteEdit.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              }),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            onChanged: (value) {
              noteEdit.title = value ?? noteEdit.title;
            },
            text: noteEdit.title,
            hintText: 'title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            onChanged: (value) {
              noteEdit.subtitle = value ?? noteEdit.subtitle;
            },
            text: noteEdit.subtitle,
            hintText: 'subject',
            maxLines: 8,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              text: 'Edit',
              onTap: () {
                noteEdit.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
