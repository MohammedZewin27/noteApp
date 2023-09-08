import 'package:flutter/material.dart';

import 'customCardView.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
final data=const[

];
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) =>CustomCardView() ,
        separatorBuilder: (context, index) => const SizedBox(height: 8,),
        ),
      ),
    );
  }
}