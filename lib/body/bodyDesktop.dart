import 'package:flutter/material.dart';
import '../constants.dart';

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
            ],
          ),
        ],
      ),
    );
  }
}
