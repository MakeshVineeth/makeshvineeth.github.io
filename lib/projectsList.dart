import 'package:flutter/material.dart';
import 'package:makesh_gitpage/projectCard.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ProjectsList extends StatelessWidget {
  // list
  final List<ProjectCard> list = <ProjectCard>[
    ProjectCard(
      text: 'PORTFOLIO',
      url: 'https://makeshvineeth.github.io/portfolio/',
      desc:
          'Portfolio made using Flutter. Supports both Dark and Light Modes. You can even set theme to System Default by long-pressing the Theme Button.',
    ),
    ProjectCard(
      text: 'CoWIN Track Availability',
      url:
          'https://play.google.com/store/apps/details?id=com.makeshtech.cowin_track_availability',
      desc:
          'An Open-Source App that can track Vaccines in India using CoWIN APIs. Supports Vaccine Availability alerts and ability to add multiple locations to search for the vaccines. Retrieves data directly from the CoWIN Public APIs.',
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
      text: 'SCCL Logging',
      url:
          'https://play.google.com/store/apps/details?id=com.makeshtech.sccl_logging',
      desc:
          'An App designed for Exploration Geophysicists for uploading the logistic details of GP Logging directly from the field with the help of Cloud. It can be later retrieved as per management requirements.',
    ),
    ProjectCard(
      text: 'Solid Color Fills',
      url:
          'https://play.google.com/store/apps/details?id=com.makeshtech.solid_color_fills',
      desc:
          'Make your device colorful using Solid Color Fills! An Open-Source app that can set your favourite color as device wallpaper.',
    ),
    ProjectCard(
      text: 'Calculator Lite',
      url:
          'https://play.google.com/store/apps/details?id=com.makeshtech.calculator_lite',
      desc:
          'An Open-Source Calculator that does all the calculations for you. No bloat, just the essentials: Calculator, History & Currency Tabs.',
    ),
  ];

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      controller: _scrollController,
      child: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(seconds: 1),
            childAnimationBuilder: (widget) => SlideAnimation(
              horizontalOffset: MediaQuery.of(context).size.width / 3,
              child: FadeInAnimation(child: widget),
            ),
            children: list,
          ),
        ),
      ),
    );
  }
}
