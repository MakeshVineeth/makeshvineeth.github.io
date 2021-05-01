import 'package:flutter/material.dart';
import 'package:makesh_gitpage/fixedValues.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final Map<String, String> links = {
    'Contact Us': 'mailto:makeshvineeth9@gmail.com',
    'Privacy Policy': 'https://makeshvineeth.github.io/privacy_policy/',
    '© 2021 MakeshTech Inc.': '',
  };

  final FixedValues fixedValues = FixedValues();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Color(0xFF333333),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children:
              List.generate(links.length, (index) => hyperlinkText(index)),
          spacing: 10.0,
          runSpacing: 5.0,
        ),
      ),
    );
  }

  Widget hyperlinkText(int index) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: Theme.of(context).cardTheme.shape,
      ),
      onPressed: () => fixedValues.launchURL(links.values.elementAt(index)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          links.keys.elementAt(index),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
