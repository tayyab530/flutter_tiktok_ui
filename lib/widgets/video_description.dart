import 'package:flutter/material.dart';
import 'package:tiktok_ui/tiktok_icons.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key}) : super(key: key);

  static const kSizeOfCheckIcon = 12.0;
  static const kSizeOfCircle = 12.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 12.0, bottom: 10),
        height: 90.0,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: [
                  const Text(
                    '@tayyab530' + ' ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  badge,
                ],
              ),
              const Text('Never Stop Learning ... TikTok'),
              Row(children: [
                Icon(
                  TikTokIcons.musicIcon,
                  size: 10.0,
                  color: Colors.grey[300],
                ),
                const Text('  Victory - @Ever Live - song',
                    style: TextStyle(fontSize: 12.0))
              ]),
            ]),
      ),
    );
  }

  Widget get badge => Stack(
    alignment: Alignment.center,
    children: [
      Container(
        padding: const EdgeInsets.all(1),
        height: kSizeOfCheckIcon,
        width: kSizeOfCheckIcon,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlueAccent,
        ),
      ),
      const Icon(Icons.check,color: Colors.white,size: kSizeOfCircle,),
    ],
  );
}
