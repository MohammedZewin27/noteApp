import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/constants/constantForApp.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16,),
      decoration: BoxDecoration(
        color: const Color(0xFFFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          ListTile(
            title: const Text(
              'DATA',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'mohammed elsayed zewin mohammed elsayed zewin',
                style:
                    TextStyle(color: Colors.black.withOpacity(0.6),
                        fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24,top: 16),
            child: Text(
              'May21 , 25/10/2023',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                fontSize: 16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
