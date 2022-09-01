import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../tiktok_icons.dart';

class ActionsToolbar extends StatelessWidget {
  const ActionsToolbar({Key? key}) : super(key: key);

  // Full dimensions of an action
  static const double kActionWidgetSize = 60.0;

// The size of the icon showen for Social Actions
  static const double kActionIconSize = 35.0;

// The size of the share social icon
  static const double kShareActionIconSize = 25.0;

// The size of the profile image in the follow Action
  static const double kProfileImageSize = 50.0;

// The size of the plus icon under the profile image in follow action
  static const double kPlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      color: Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getFollowAction(pictureUrl: "https://media-exp1.licdn.com/dms/image/C4D03AQGciJDIzpsfnw/profile-displayphoto-shrink_200_200/0/1661865090860?e=1667433600&v=beta&t=KOBMepGaAccKMS-s4GqXsSSeSSz5z8-gORlDvJ7DlzA"),
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

  Widget _getFollowAction({
    required String pictureUrl}) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        width: 60.0,
        height: 60.0,
        child: Stack( children: [
          _getProfilePicture(pictureUrl: pictureUrl),
          _getPlusIcon()])
    );
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((kActionWidgetSize / 2) - (kPlusIconSize / 2)),
      child: Container(
          width: kPlusIconSize,  // kPlusIconSize = 20.0;
          height: kPlusIconSize, // kPlusIconSize = 20.0;
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 43, 84),
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Icon(Icons.add, color: Colors.white, size: 20.0, )),);
  }

  Widget _getProfilePicture({required String pictureUrl}) {
    return Positioned(
        left: (kActionWidgetSize / 2) - (kProfileImageSize / 2),
        child: Container(
          padding: const EdgeInsets.all(1.0), // Add 1.0 point padding to create border
          height: kProfileImageSize, // kProfileImageSize = 50.0;
          width: kProfileImageSize, // kProfileImageSize = 50.0;
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kProfileImageSize / 2)
          ),
          // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
          child: CachedNetworkImage(
            imageUrl: pictureUrl,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }
}
