import 'package:flutter/material.dart';
import 'package:makesh_gitpage/projectCard.dart';

class ProjectsList extends StatelessWidget {
  // list
  final list = [
    ProjectCard(
      text: 'PORTFOLIO',
      url: 'https://makeshvineeth.github.io/portfolio/',
      desc: 'About Me. This portfolio is made possible using Flutter.',
    ),
    ProjectCard(
      text: 'FLUTTER CLOCK',
      url: 'https://makeshvineeth.github.io/world_clock/',
      desc:
          'A Simple World Clock. Please note that in web version, time doesn\'t work as GitHub supports only static pages.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list,
      ),
    );
  }
}
