import 'package:flutter/material.dart';
import '../constants.dart';
import '../chips.dart';

class BodyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 100, right: 100, top: MediaQuery.of(context).size.height / 5),
      child: Wrap(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: profile,
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  kHello,
                  style: TextStyle(
                    fontSize: 80,
                    fontFamily: 'Roboto',
                    color: Colors.teal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          kIAm,
                          style: TextStyle(
                            fontSize: 80,
                            fontFamily: 'Roboto',
                            color: Colors.teal,
                          ),
                        ),
                        Text(
                          kFirstName,
                          style: TextStyle(
                            fontSize: 80,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  kLastName,
                  style: TextStyle(
                    fontSize: 80,
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
                    letterSpacing: 7,
                  ),
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
                  '  ${kExperience['role']!}',
                  style: kTextStyle1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '  ${kExperience['description']!}',
                  style: kTextStyle1,
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Technical Skills:',
                            style: kTextStyle2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Soft Skills:',
                            style: kTextStyle2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Chips(list: kTechnicalSkills)),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Chips(list: kSoftSkills),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: Colors.teal,
          ),
          Container(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hobbies: ',
              style: kTextStyle2,
            ),
          ),
          Container(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Chips(
              list: kHobbies,
            ),
          ),
          Container(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: Colors.teal,
          ),
          Container(
            height: 100,
          ),
        ],
      ),
    );
  }
}
