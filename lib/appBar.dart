import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/customIcons/githubIcon.dart';
import 'package:portfolio/customIcons/linkedinIcon.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/floatingActionButton.dart';

import 'constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'pOrtfOliO!',
                  textStyle: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'MajorMono',
                    fontStyle: FontStyle.normal,
                    // letterSpacing: 3,
                  ),
                  colors: [
                    Colors.teal,
                    Colors.white,
                  ],
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContactButton(icon: LinkedinIcon.linkedin, link: kLinkedin),
                SizedBox(
                  width: 10,
                ),
                ContactButton(icon: GithubIcon.mark_github, link: kGithub),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
