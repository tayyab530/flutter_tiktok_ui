import 'package:flutter/material.dart';

import '../tiktok_icons.dart';

class BottomToolbar extends StatelessWidget {
  const BottomToolbar({Key? key}) : super(key: key);

  //Navigation Icon size
  static const double kNavigationIconSize = 25.0;

  //Create Button Width
  static const kCreateButtonWidth = 38.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  [
          const Icon(Icons.home, color: Colors.white, size: kNavigationIconSize),
          const Icon(Icons.search_rounded,
              color: Colors.white, size: kNavigationIconSize),
          customCreateIcon,
          const Icon(Icons.message_outlined,
              color: Colors.white, size: kNavigationIconSize),
          const Icon(Icons.person_outline,
              color: Colors.white, size: kNavigationIconSize)
        ],
      ),
    );
  }

  Widget get customCreateIcon => SizedBox(
      width: 45.0,
      height: 27.0,
      child: Stack(
          children:[
            Container(
                margin: const EdgeInsets.only(left: 10.0),
                width: kCreateButtonWidth,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 250, 45, 108),
                    borderRadius: BorderRadius.circular(7.0)
                )),

            Container(
                margin: const EdgeInsets.only(right: 10.0),
                width: kCreateButtonWidth,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 32, 211, 234),
                    borderRadius: BorderRadius.circular(7.0)
                )),
            Center(child:Container(
              height: double.infinity,
              width: kCreateButtonWidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0)
              ),
              child: const Icon(Icons.add, size: 20.0,),
            )),
          ]
      ));
}