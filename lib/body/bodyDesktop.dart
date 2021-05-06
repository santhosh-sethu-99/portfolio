import 'package:flutter/material.dart';
import '../constants.dart';
import '../chips.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
                child: Container(
                  height: 300,
                  width: 300,
                  child: CircleAvatar(
                    child: Image(
                      image: AssetImage(
                        'assets/images/profile.jpeg',
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
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
                // child: Text(
                //   'FLUTTER DEVELOPER',
                //   style: TextStyle(
                //     fontSize: 30,
                //     fontFamily: 'Roboto',
                //     fontWeight: FontWeight.w100,
                //     color: Colors.teal,
                //     letterSpacing: 7,
                //   ),
                // ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText('FLUTTER DEVELOPER',
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w100,
                          letterSpacing: 5,
                        ),
                        colors: [
                          Colors.teal,
                          Colors.white,
                        ],
                        speed: Duration(milliseconds: 200)),
                  ],
                  totalRepeatCount: 1,
                  pause: Duration(milliseconds: 100),
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
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w100,
                              color: Colors.teal,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Soft Skills:',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w100,
                              color: Colors.teal,
                              letterSpacing: 3,
                            ),
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
        ],
      ),
    );
  }
}
