import 'package:flutter/material.dart';

import 'package:taruguru/pages/men/menproduct.dart';
import 'package:taruguru/pages/men/mencategory.dart';

class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "MEN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        mencategory(),

        Padding(padding: const EdgeInsets.all(8),),
        Flexible(child: menproduct()),
        //),

      ],
          );
  }
}
