import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/constants/constantForApp.dart';
import 'package:note/model/noteModel.dart';

import '../views/editNoteView.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({
    required this.note,
    super.key,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.routeName);
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('note deleted')));
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 16),
              child: Text(
                note.date,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
