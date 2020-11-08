import 'package:flutter/material.dart';
import 'package:makesh_gitpage/projectCard.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ProjectsList extends StatelessWidget {
  // list
  final list = [
    ProjectCard(
      text: 'PORTFOLIO',
      url: 'https://makeshvineeth.github.io/portfolio/',
      desc:
          'Portfolio made using Flutter. Supports both Dark and Light Modes. You can even set theme to System Default by long-pressing the Theme Button.',
    ),
    ProjectCard(
      text: 'FLUTTER CLOCK',
      url: 'https://makeshvineeth.github.io/world_clock/',
      desc:
          'A sleek looking Online World Clock App. Please note that in Web version, Time won\'t get displayed as GitHub Pages does not support server-side features yet.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Container(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: AnimationLimiter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 1),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: MediaQuery.of(context).size.width / 3,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: list,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
