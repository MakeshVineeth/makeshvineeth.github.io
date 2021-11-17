import 'package:flutter/material.dart';
import 'package:makesh_gitpage/home.dart';
import 'package:makesh_gitpage/fixedValues.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  final FixedValues fixedValues = FixedValues();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: fixedValues.title,
      themeMode: ThemeMode.light,
      theme: fixedValues.themeData(Brightness.light),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
        HomeApp(),
        defaultScale: true,
        breakpoints: <ResponsiveBreakpoint>[
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
    );
  }
}
