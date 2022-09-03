import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          followingWid,
          const Text(
            "  For You",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget get followingWid =>Stack(
    clipBehavior: Clip.none,
    children: [
      const Positioned(
        top: -3,
        right: 9,
        child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 3.5,
        ),
      ),
      Text(
        "Following    |",
        style: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
