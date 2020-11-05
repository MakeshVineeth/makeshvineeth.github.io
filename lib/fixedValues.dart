import 'package:flutter/material.dart';

class FixedValues {
  Color bg = Colors.white;
  String title = 'MakeshTech\'s World';

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
