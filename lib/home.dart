import 'package:flutter/material.dart';
import 'package:makesh_gitpage/header.dart';
import 'package:makesh_gitpage/secondRowHome.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
        duration: const Duration(milliseconds: 1000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Header(),
            ),
            Expanded(flex: 2, child: SecondRowHome()),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onLongPress: () {},
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.lightbulb_outline_rounded,
          ),
        ),
      ),
    );
  }
}
