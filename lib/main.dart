import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:note/constants/constantForApp.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/model/noteModel.dart';
import 'package:note/views/editNoteView.dart';
import 'package:note/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: fontsForNote),
        initialRoute: NotesView.routeName,
        routes: {
          NotesView.routeName: (context) => NotesView(),
          EditNoteView.routeName: (context) => EditNoteView(),
        },
      ),
    );
  }
}
