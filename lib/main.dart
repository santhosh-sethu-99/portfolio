import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'TitilliumWeb',
      ),
    );
  }
}
