import 'package:flutter/material.dart';
import '../floatingActionButton.dart';
import '../constants.dart';
import '../customIcons/githubIcon.dart';
import '../customIcons/linkedinIcon.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AppBarTabletOrDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            logoPortfolio,
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
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'talk is cheap; show me the code;',
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'SourceCodePro',
                  fontWeight: FontWeight.w100,
                ),
                speed: const Duration(milliseconds: 200),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 100),
          ),
        ),
      ],
    );
  }
}
