import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:makesh_gitpage/fixedValues.dart';

class ProjectCard extends StatelessWidget {
  final text;
  ProjectCard({this.text});

  final FixedValues fixedValues = FixedValues();

  @override
  Widget build(BuildContext context) {
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
                  letterSpacing: fixedValues.fixedSpacing,
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
