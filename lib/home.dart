import 'package:flutter/material.dart';
import 'package:makesh_gitpage/footer.dart';
import 'package:makesh_gitpage/header.dart';
import 'package:makesh_gitpage/secondRowHome.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:makesh_gitpage/fixedValues.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

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
          children: <Widget>[
            Expanded(
              child: Header(),
            ),
            Expanded(
              flex: 4,
              child: SecondRowHome(),
            ),
            SizedBox(
              height: 60,
              child: Footer(),
            ),
          ],
        ),
      ),
      floatingActionButton: FadeIn(
        duration: fixedValues.floatBtnDur,
        child: InkWell(
          onLongPress: () {
            AdaptiveTheme.of(context).setSystem();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Changed to System Default Theme!'),
              ),
            );
          },
          child: FloatingActionButton(
            onPressed: () => AdaptiveTheme.of(context).toggleThemeMode(),
            child: Icon(
              Icons.lightbulb_outline_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
