import 'package:flutter/material.dart';
import 'package:portfolio/appBar/appBar.dart';
import 'body/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(
              'assets/images/codingWallpaper.jpeg',
            ),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomAppBar(),
                    Body(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
