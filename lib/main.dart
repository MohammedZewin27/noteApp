import 'package:flutter/material.dart';
import 'package:note/constants/constantForApp.dart';
import 'package:note/views/editNoteView.dart';
import 'package:note/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: fontsForNote
      ),
      initialRoute: NotesView.routeName,
      routes: {
        NotesView.routeName: (context) => NotesView(),
        EditNoteView.routeName: (context) => EditNoteView(),
      },
    );
  }
}
