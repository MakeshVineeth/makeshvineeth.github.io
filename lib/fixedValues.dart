import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FixedValues {
  Color bg = Colors.white;
  Color fg = Colors.white;
  String title = 'MakeshTech Hub';

  final double fixedSpacing = 1.0;

  // Fade in durations
  final Duration scaffoldDur = const Duration(milliseconds: 1000);
  final Duration projectCardDur = const Duration(milliseconds: 1500);
  final Duration floatBtnDur = const Duration(milliseconds: 2000);

  final cardRadius = BorderRadius.circular(20.0);

  ThemeData themeData(Brightness brightness, BuildContext context) => ThemeData(
        brightness: brightness,
        scaffoldBackgroundColor: bg,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: fg,
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(borderRadius: cardRadius),
        ),
        textTheme: TextTheme(
          bodyText2: Theme.of(context).textTheme.bodyText2.copyWith(
            fontFeatures: const [FontFeature.proportionalFigures()],
          ),
        ),
      );

  void launchURL(String url) async {
    if (url != null && url.isNotEmpty) {
      url = Uri.encodeFull(url);
      if (await canLaunch(url)) await launch(url);
    }
  }
}
