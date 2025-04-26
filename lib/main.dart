import 'package:flutter/material.dart';
import 'package:makesh_gitpage/home.dart';
import 'package:makesh_gitpage/fixed_values.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  final FixedValues fixedValues = FixedValues();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: fixedValues.title,
      themeMode: ThemeMode.light,
      theme: fixedValues.themeData(Brightness.light, context),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveBreakpoints.builder(
        child: HomeApp(),
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
