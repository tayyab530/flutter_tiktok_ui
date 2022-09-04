import 'package:flutter/material.dart';
import 'package:tiktok_ui/widgets/actions_toolbar.dart';
import 'package:tiktok_ui/widgets/bottom_toolbar.dart';
import 'package:tiktok_ui/widgets/topsection.dart';
import 'package:tiktok_ui/widgets/video_description.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter TitTok UI',
      theme: ThemeData(
        // Uncomment in phase 3 to apply white to text
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.grey[300],
            displayColor: Colors.white,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const String bgImageUrl = "assets/bg.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                bgImageUrl,
            ),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: <Widget>[
            // Top section
            const TopSection(),
            // Middle expanded
            middleSection,
            // Bottom Section
            const BottomToolbar(),
          ],
        ),
      ),
    );
  }

  Widget get middleSection => Expanded(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const <Widget>[
            VideoDescription(),
            ActionsToolbar()
          ]));
}
