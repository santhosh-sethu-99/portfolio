import 'package:flutter/material.dart';
import '../floatingActionButton.dart';
import '../constants.dart';
import '../customIcons/githubIcon.dart';
import '../customIcons/linkedinIcon.dart';

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
                ContactButton(
                  icon: Icons.phone,
                  link: '',
                ),
                SizedBox(
                  width: 10,
                ),
                ContactButton(
                  icon: LinkedinIcon.linkedin,
                  link: kLinkedin,
                ),
                SizedBox(
                  width: 10,
                ),
                ContactButton(
                  icon: GithubIcon.mark_github,
                  link: kGithub,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        quote,
      ],
    );
  }
}
