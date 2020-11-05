import 'package:flutter/material.dart';
import 'package:makesh_gitpage/projectCard.dart';

class ProjectsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectCard(text: 'PORTFOLIO'),
          ProjectCard(text: 'FLUTTER CLOCK'),
        ],
      ),
    );
  }
}
