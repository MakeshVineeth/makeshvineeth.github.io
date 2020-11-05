import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:makesh_gitpage/fixedValues.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final text;
  final url;
  final desc;
  ProjectCard({@required this.text, this.url, this.desc});

  final FixedValues fixedValues = FixedValues();

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: fixedValues.projectCardDur,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 10.0,
              child: InkWell(
                onTap: () => _launchURL(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: fixedValues.fixedSpacing,
                        ),
                      ),
                      if (desc != null)
                        SizedBox(
                          height: 5.0,
                        ),
                      if (desc != null)
                        TyperAnimatedTextKit(
                          text: [desc],
                          isRepeatingAnimation: false,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    if (this.url != null) {
      String url = this.url;
      if (await canLaunch(url)) await launch(url);
    }
  }
}
