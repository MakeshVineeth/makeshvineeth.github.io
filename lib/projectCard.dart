import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:makesh_gitpage/fixedValues.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

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
          children: <Widget>[
            Card(
              elevation: 5.0,
              child: InkWell(
                onTap: () => fixedValues.launchURL(this.url),
                borderRadius: fixedValues.cardRadius,
                child: IgnorePointer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text.toString().toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: fixedValues.fixedSpacing,
                          ),
                        ),
                        if (desc != null) SizedBox(height: 5.0),
                        if (desc != null)
                          AnimatedTextKit(
                            animatedTexts: <AnimatedText>[
                              TyperAnimatedText(
                                desc,
                                speed: const Duration(milliseconds: 15),
                              ),
                            ],
                            displayFullTextOnTap: true,
                            isRepeatingAnimation: false,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
