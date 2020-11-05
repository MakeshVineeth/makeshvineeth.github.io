import 'package:flutter/material.dart';
import 'package:makesh_gitpage/header.dart';
import 'package:makesh_gitpage/secondRowHome.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
