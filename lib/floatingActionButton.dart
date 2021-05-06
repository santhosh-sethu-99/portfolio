// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String link;
  final IconData icon;

  ContactButton({required this.icon, required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: FloatingActionButton(
        elevation: 5,
        onPressed: () {
          html.window.open(link, 'new tab');
        },
        hoverColor: Colors.grey[300],
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
        child: Icon(
          icon,
          size: 20,
        ),
      ),
    );
  }
}
