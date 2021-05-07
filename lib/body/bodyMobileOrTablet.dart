import 'package:flutter/material.dart';
import '../constants.dart';
import '../chips.dart';
import '../floatingActionButton.dart';
import '../customIcons/githubIcon.dart';
import '../customIcons/linkedinIcon.dart';

class BodyMobileOrTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
      child: Wrap(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: profile,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  kHello,
                  style: TextStyle(
                    fontSize: 65,
                    fontFamily: 'Roboto',
                    color: Colors.teal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  kIAm,
                  style: TextStyle(
                    fontSize: 65,
                    fontFamily: 'Roboto',
                    color: Colors.teal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  kFirstName,
                  style: TextStyle(
                    fontSize: 65,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  kLastName,
                  style: TextStyle(
                    fontSize: 70,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w100,
                    color: Colors.teal,
                    letterSpacing: 5,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 1,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Experience: ',
                  style: kTextStyle2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '- ${kExperience['companyName']!}[Dec,2020 - Mar,2021]',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${kExperience['role']!}',
                  style: kTextStyle1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${kExperience['description']!}',
                  style: kTextStyle1,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Technical Skills:',
                  style: kTextStyle2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Chips(
                  list: kTechnicalSkills,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Soft Skills:',
                  style: kTextStyle2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Chips(
                  list: kSoftSkills,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hobbies: ',
                  style: kTextStyle2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Chips(
                  list: kHobbies,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 200,
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContactButton(
                      icon: Icons.phone,
                      link: '',
                    ),
                    ContactButton(
                      icon: LinkedinIcon.linkedin,
                      link: kLinkedin,
                    ),
                    ContactButton(
                      icon: GithubIcon.mark_github,
                      link: kGithub,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
