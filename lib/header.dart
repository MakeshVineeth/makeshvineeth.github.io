import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:makesh_gitpage/fixedValues.dart';

class Header extends StatelessWidget {
  final FixedValues fixedValues = FixedValues();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
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
            letterSpacing: fixedValues.fixedSpacing,
          ),
        ),
      ),
    );
  }
}
