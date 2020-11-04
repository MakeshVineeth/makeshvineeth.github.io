import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: TypewriterAnimatedTextKit(
                  speed: const Duration(milliseconds: 100),
                  repeatForever: true,
                  text: [
                    "Welcome to Makesh Vineeth\'s World",
                    "Here you can find all my works",
                    "Take a look below to find my latest works",
                    "Visit Portfolio to know more about me."
                  ],
                  textStyle: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(child: Text('Works')),
            ),
          ),
        ],
      ),
    );
  }
}
