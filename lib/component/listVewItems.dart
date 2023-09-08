import 'package:flutter/material.dart';

import 'customCardView.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) =>CustomCardView() ,
      separatorBuilder: (context, index) => const SizedBox(height: 8,),
      ),
    );
  }
}