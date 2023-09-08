import 'package:flutter/material.dart';

import '../component/BadyWiget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static const String routeName = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BadyWidget(),
    );
  }
}
