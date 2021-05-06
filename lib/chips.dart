import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  final list;

  Chips({this.list});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10,
      children: [
        for (int i = 0; i < list.length; i++)
          Chip(
            labelPadding: EdgeInsets.all(2.0),
            label: Text(
              list[i],
              style: TextStyle(
                color: Colors.teal[900],
              ),
            ),
            backgroundColor: Colors.transparent.withOpacity(0.3),
            elevation: 6.0,
            shadowColor: Colors.grey[60],
            padding: EdgeInsets.all(8.0),
          ),
      ],
    );
  }
}
