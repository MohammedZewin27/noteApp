import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';

import 'appBarWidget.dart';
import 'customCardView.dart';
import 'listViewItems.dart';

class BadyWidget extends StatefulWidget {
  const BadyWidget({
    super.key,
  });

  @override
  State<BadyWidget> createState() => _BadyWidgetState();
}

class _BadyWidgetState extends State<BadyWidget> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Column(
          children: [
            AppBarWidget(title: 'Notes', icon: Icons.search),
            NotesListView()
          ],
        ),
      ),
    );
  }
}
