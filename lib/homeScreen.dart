import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/githubIcon.dart';
import 'package:portfolio/linkedinIcon.dart';
import 'dart:html' as html;
import 'package:animated_text_kit/animated_text_kit.dart';

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
          Positioned(
            top: 0,
            left: 20,
            child: Row(
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    // TypewriterAnimatedText(
                    //   'PORTFOLIO!',
                    //   textStyle: TextStyle(
                    //     fontSize: 45.0,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.grey,
                    //     fontFamily: 'TitilliumWeb',
                    //   ),
                    //   speed: const Duration(milliseconds: 200),
                    // ),
                    ColorizeAnimatedText(
                      'PORTFOLIO!',
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'TitilliumWeb',
                        fontWeight: FontWeight.bold,
                      ),
                      colors: [
                        Colors.grey,
                        Colors.grey,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 100),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  child: FloatingActionButton(
                    onPressed: () {
                      html.window.open(
                          'https://www.linkedin.com/in/santhosh-kumar-sethuraman-0b6076203/',
                          'new tab');
                    },
                    hoverColor: Colors.grey[300],
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black54,
                    child: Icon(
                      LinkedinIcon.linkedin,
                      size: 18,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 35,
                  child: FloatingActionButton(
                    onPressed: () {
                      html.window.open(
                          'https://github.com/santhosh-sethu-99', 'new tab');
                    },
                    hoverColor: Colors.grey[300],
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black54,
                    child: Icon(
                      GithubIcon.mark_github,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5,
            // bottom: 0,
            // right: 0,
            left: MediaQuery.of(context).size.width / 5,
            child: Text(
              "i am here",
              style: TextStyle(
                fontSize: 55,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
