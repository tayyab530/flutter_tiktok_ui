import 'package:flutter/material.dart';

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
              const Text('TikTok ui tutorial'),
              Row(children: const [
                Icon(
                  Icons.music_note,
                  size: 15.0,
                  color: Colors.white,
                ),
                Text('Tayyab - UI Tutorials - song',
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
        padding: EdgeInsets.all(1),
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
