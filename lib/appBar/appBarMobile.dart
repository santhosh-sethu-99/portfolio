import 'dart:html';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants.dart';

class AppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          logoPortfolio,
          const SizedBox(
            height: 5,
          ),
          quote,
        ],
      ),
    );
  }
}
