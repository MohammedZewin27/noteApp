import 'package:flutter/material.dart';

import 'appBarWidget.dart';
import 'customCardView.dart';
import 'listVewItems.dart';

class BadyWidget extends StatelessWidget {
  const BadyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Column(
          children: [
            AppBarWidget(),
            NotesListView()
          ],
        ),
      ),
    );
  }
}
