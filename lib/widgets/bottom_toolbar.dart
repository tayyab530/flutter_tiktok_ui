import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../tiktok_icons.dart';

class BottomToolbar extends StatelessWidget {
  const BottomToolbar({Key? key}) : super(key: key);

  //Navigation Icon size
  static const double kNavigationIconSize = 25.0;

  //Create Button Width
  static const kCreateButtonWidth = 38.0;

  //font size of icon label
  static const double fontSize = 12.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5,top: 10),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(TikTokIcons.homeSolidIcon, color: Colors.white, size: kNavigationIconSize,),
              SizedBox(height: 4,),
              Text("Home",style: TextStyle(fontSize: fontSize),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/Search Icon.svg",
                  semanticsLabel: ''),
              const SizedBox(height: 4,),
              const Text("Search",style: TextStyle(fontSize: fontSize),)
            ],
          ),
          // const Icon(Icons.search_rounded,
          //     color: Colors.white, size: kNavigationIconSize + 8),

          customCreateIcon,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(TikTokIcons.messageStrokeIcon,
                  color: Colors.white, size: kNavigationIconSize),
              SizedBox(height: 4,),
              Text("Inbox",style: TextStyle(fontSize: fontSize),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(TikTokIcons.accountStrokeIcon,
                  color: Colors.white, size: kNavigationIconSize),
              SizedBox(height: 4,),
              Text("Me",style: TextStyle(fontSize: fontSize),)
            ],
          ),

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
              child: const Icon(Icons.add, size: 15.0,),
            )),
          ]
      ));
}