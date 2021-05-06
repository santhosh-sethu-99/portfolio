// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

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
          if (link != '') {
            html.window.open(link, 'new tab');
          } else {
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Contact Card'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(Icons.phone),
                            const SizedBox(
                              width: 5,
                            ),
                            TextButton(
                              onPressed: () {
                                launch("tel://+91-9047097827");
                              },
                              child: Text('+91-9047097827'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.mail),
                            const SizedBox(
                              width: 5,
                            ),
                            TextButton(
                              onPressed: () async {
                                final mailtoLink = Mailto(
                                  to: ['sethuramansanthoshkumar@gmail.com'],
                                );
                                await launch('$mailtoLink');
                              },
                              child: Text('sethuramansanthoshkumar@gmail.com'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Close'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          }
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
