import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/model/noteModel.dart';
import 'customCardView.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  // final data = const[
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).notes??[];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount:notes.length ,
              itemBuilder: (context, index) => CustomCardView(note: notes[index],),
              separatorBuilder: (context, index) => const SizedBox(height: 8,),
            ),
          ),
        );
      },
    );
  }
}