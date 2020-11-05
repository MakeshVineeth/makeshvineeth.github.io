import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:makesh_gitpage/home.dart';
import 'package:makesh_gitpage/fixedValues.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(Home());
  GestureBinding.instance.resamplingEnabled = true;
}

class Home extends StatelessWidget {
  final FixedValues fixedValues = FixedValues();
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: fixedValues.themeData(Brightness.light),
      dark: fixedValues.themeDataDark(),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: fixedValues.title,
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, HomeApp()),
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
        ),
      ),
    );
  }
}
