import 'package:flutter/material.dart';

import '../component/BadyWiget.dart';
import '../component/addNoteBottomSheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static const String routeName = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
          context: context,
          builder: (context) {
          return AddNoteBottomSheet();
        },);
      } ,
      child: Icon(Icons.add),
      ),
      body: BadyWidget(),
    );
  }
}


