import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:makesh_gitpage/home.dart';
import 'package:makesh_gitpage/fixedValues.dart';

void main() {
  runApp(Home());
  GestureBinding.instance.resamplingEnabled = true;
}

class Home extends StatelessWidget {
  final FixedValues fixedValues = FixedValues();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: fixedValues.title,
      theme: fixedValues.themeData(Brightness.light),
      darkTheme: fixedValues.themeDataDark(),
      home: HomeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
