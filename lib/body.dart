import 'package:flutter/material.dart';
import 'constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 100, right: 100, top: 200),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: kHello,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              kIAm,
              kFirstName,
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: kLastName,
          )
        ],
      ),
    );
  }
}
