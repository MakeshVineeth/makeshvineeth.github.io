import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
  GestureBinding.instance.resamplingEnabled = true;
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text('THE BEGINNING'),
      ),
    );
  }
}
