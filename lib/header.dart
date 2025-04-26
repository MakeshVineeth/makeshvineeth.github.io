import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:makesh_gitpage/fixed_values.dart';

class Header extends StatelessWidget {
  final FixedValues fixedValues = FixedValues();
  final List<String> texts = <String>[
    'Welcome to MakeshTech Hub.',
    'Take a look below to find our latest works.',
    'Visit Portfolio to know more about me.'
  ];

  Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: List.generate(
            texts.length,
            (index) => _typerAnimatedText(
              texts.elementAt(index),
            ),
          ),
          pause: const Duration(seconds: 2),
          totalRepeatCount: 3,
          displayFullTextOnTap: true,
        ),
      ),
    );
  }

  TextStyle _textStyle() => TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        letterSpacing: fixedValues.fixedSpacing,
      );

  TyperAnimatedText _typerAnimatedText(String text) => TyperAnimatedText(
        text,
        speed: const Duration(milliseconds: 150),
        textStyle: _textStyle(),
      );
}
