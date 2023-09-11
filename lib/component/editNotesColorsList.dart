import 'package:flutter/material.dart';
import 'package:note/component/colorsListView.dart';
import 'package:note/constants/constantForApp.dart';
import 'package:note/model/noteModel.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key,required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex=colors.indexOf(Color(widget.noteModel.color));
  }
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 47,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              widget.noteModel.color=colors[index].value;
              currentIndex = index;
              setState(() {

              });

            },
            child: ColorsItems(
              isSelected: currentIndex == index,
              color: colors[index],
            ),
          ),
        ),
      ),
    );
  }
}