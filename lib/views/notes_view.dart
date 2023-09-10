import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';

import '../component/BadyWiget.dart';
import '../component/addNoteBottomSheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static const String routeName = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          context: context,
          builder: (context) {
            return const AddNoteBottomSheet();
          },);
      },
        child: const Icon(Icons.add),
      ),
      body: const BadyWidget(),
    );
  }
}


