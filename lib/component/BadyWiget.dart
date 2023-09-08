import 'package:flutter/material.dart';

import 'appBarWidget.dart';
import 'customCardView.dart';


class BadyWidget extends StatelessWidget {
  const BadyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical:8 ,horizontal:24 ),
        child: Column(
          children: [
            AppBarWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index) =>CustomCardView() ,),
            )
          ],
        ),
      ),
    );
  }
}

