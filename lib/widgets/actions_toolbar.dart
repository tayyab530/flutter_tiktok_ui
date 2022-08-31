import 'dart:math';

import 'package:flutter/material.dart';

import '../tiktok_icons.dart';

class ActionsToolbar extends StatelessWidget {
  const ActionsToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      color: Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getSocialAction(icon: Icons.favorite_outlined, title: '3.2m'),
          _getSocialAction(icon: Icons.comment, title: '16.4k'),
          _getSocialAction(icon: Icons.reply, title: 'Share'),
        ],
      ),
    );
  }

  Widget _getSocialAction({
    required String title,
    required IconData icon,
  }) {
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        width: 60.0,
        height: 60.0,
        child: Column(children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(pi),
            child: Icon(icon, size: 35.0, color: Colors.grey[300]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(title, style: const TextStyle(fontSize: 12.0)),
          )
        ]));
  }
}
