import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final double fixed_spacing = 1.0;

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
              color: Colors.white70,
              padding: EdgeInsets.all(10),
              child: Center(
                child: TypewriterAnimatedTextKit(
                  speed: const Duration(milliseconds: 150),
                  pause: const Duration(seconds: 2),
                  repeatForever: true,
                  text: [
                    "Welcome to MakeshTech\'s World",
                    "Take a look below to find our latest works",
                    "Visit Portfolio to know more about me."
                  ],
                  textStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: fixed_spacing,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'OUR PROJECTS:',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          letterSpacing: fixed_spacing,
                        ),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          projectCard('PORTFOLIO'),
                          projectCard('FLUTTER CLOCK'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: InkWell(
        onLongPress: () {},
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.lightbulb_outline_rounded,
          ),
        ),
      ),
    );
  }

  Widget projectCard(String text) {
    return Column(
      children: [
        Card(
          elevation: 10.0,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: fixed_spacing,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
