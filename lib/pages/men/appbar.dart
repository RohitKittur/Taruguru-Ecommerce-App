//import 'dart:js';

import 'package:flutter/material.dart';

import 'package:taruguru/pages/men/body.dart';
import 'package:taruguru/pages/cart.dart';

class appbar extends StatefulWidget {
  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: body(),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.yellow,
      elevation: 1,
      iconTheme: IconThemeData(color: Colors.black),
      //title: Text('MEN'),
        //foregroundColor: Colors.black,
      //leading: IconButton(
        //icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
        //onPressed: () {},
      //),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.black,),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => cart()));
          },
        ),
        SizedBox(width: 2)
      ],
    );
  }
}