import 'package:flutter/material.dart';
import 'package:makesh_gitpage/header.dart';
import 'package:makesh_gitpage/secondRowHome.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:makesh_gitpage/fixedValues.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final FixedValues fixedValues = FixedValues();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
        duration: fixedValues.scaffoldDur,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Header(),
            ),
            Expanded(
              flex: 2,
              child: SecondRowHome(),
            ),
          ],
        ),
      ),
      floatingActionButton: FadeIn(
        duration: fixedValues.floatBtnDur,
        child: InkWell(
          onLongPress: () {},
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.lightbulb_outline_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
