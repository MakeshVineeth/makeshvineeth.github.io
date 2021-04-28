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
      url: 'https://play.google.com/store/apps/details?id=com.makeshtech.clock',
      desc:
          'A sleek looking Online World Clock App. Please note that in Web version, Time won\'t get displayed as GitHub Pages does not support server-side features yet.',
    ),
    ProjectCard(
      text: 'LINE BALANCING USING RPW',
      url: 'https://makeshvineeth.github.io/ranked_positional_weight_method',
      desc:
          'An App that calculates the Ranked Positional Weight Method (RPW), it can be used to develop and balance an assembly line. Values are to be separated by spaces.',
    ),
    ProjectCard(
      text: 'Solid Color Fills',
      url:
          'https://play.google.com/store/apps/details?id=com.makeshtech.solid_color_fills',
      desc:
          'An Open-Source app that can set your favourite color as device wallpaper.',
    ),
    ProjectCard(
      text: 'Calculator Lite',
      url:
          'https://play.google.com/store/apps/details?id=com.makeshtech.calculator_lite',
      desc:
          'Privacy-friendly Calculator with Minimalism, Endless History and Currency.',
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
