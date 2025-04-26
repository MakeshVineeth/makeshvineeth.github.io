import 'package:flutter/material.dart';
import 'package:makesh_gitpage/fixed_values.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  FooterState createState() => FooterState();
}

class FooterState extends State<Footer> {
  final Map<String, String> links = {
    'Contact Us': 'mailto:makeshvineeth9@gmail.com',
    'Privacy Policy': 'https://makeshvineeth.github.io/privacy_policy/',
    'Play Store':
        'https://play.google.com/store/apps/dev?id=6977904785627641800',
    'LinkedIn': 'https://www.linkedin.com/in/makeshvineeth/',
    '© 2025 MakeshTech Inc.': '',
  };

  final FixedValues fixedValues = FixedValues();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF333333),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          cacheExtent: 2000,
          scrollDirection: Axis.horizontal,
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          children: List.generate(
            links.length,
            (index) => hyperlinkText(index),
          ),
        ),
      ),
    );
  }

  Widget hyperlinkText(int index, {bool isBolder = false}) => TextButton(
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () => fixedValues.launchThisUrl(links.values.elementAt(index)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Text(
            links.keys.elementAt(index),
            style: TextStyle(
              fontWeight: isBolder ? FontWeight.bold : FontWeight.w600,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      );
}
