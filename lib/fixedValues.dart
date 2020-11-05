import 'package:flutter/material.dart';

class FixedValues {
  Color bg = Colors.white;
  String title = 'MakeshTech Hub';

  final double fixedSpacing = 1.0;

  // Fade in durations
  final Duration scaffoldDur = Duration(milliseconds: 1000);
  final Duration projectCardDur = Duration(milliseconds: 1500);
  final Duration floatBtnDur = Duration(milliseconds: 2000);

  ThemeData themeData(Brightness brightness) {
    return ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: bg,
    );
  }

  ThemeData themeDataDark() {
    bg = Colors.black87;
    return themeData(Brightness.dark);
  }
}
