import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';

import 'package:taruguru/items.dart';
import 'package:taruguru/categories.dart';
import 'package:taruguru/pages/cart.dart';
import 'package:taruguru/initial/welcome.dart';



class TgHomePage extends StatefulWidget {

  @override
  _TgHomePageState createState() => _TgHomePageState();
}

class _TgHomePageState extends State<TgHomePage> {
  @override
  Widget build(BuildContext context) {

  Widget image_carousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/1.jpg'),
        AssetImage('assets/images/2.jpg'),
      ],
      autoplay: false,
      indicatorBgPadding: 0.0,
      dotSize: 0.0,
      //dotSpacing: 20.0,
      animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );


    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.yellow,
        title: Text('TARUGURU'),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => cart()));
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ))
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Rohit Kittur'),
            accountEmail: Text('Kittur830@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Color(0xFF1A5F7A)),
          ),
          //body
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home'),
              leading: Icon(
                Icons.home,
                color: Color(0xFF086E7D),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
            },
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(
                Icons.person,
                color: Color(0xFF086E7D),
              ),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Order'),
              leading: Icon(
                Icons.shopping_basket,
                color: Color(0xFF086E7D),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => cart()));
            },
            child: ListTile(
              title: Text('Shopping Cart'),
              leading: Icon(
                Icons.dashboard,
                color: Color(0xFF086E7D),
              ),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Wishlist'),
              leading: Icon(
                Icons.favorite,
                color: Color(0xFF086E7D),
              ),
            ),
          ),

          Divider(),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
                //color: Color(0xFF086E7D),
              ),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                //color: Color(0xFF086E7D),
              ),
            ),
          ),
        ],
      )),
      body: ListView(
        children: [
          image_carousel,
          Padding(padding: const EdgeInsets.all(8),
          child: Text('categories:', style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          items(),
          Padding(padding: const EdgeInsets.all(0),),

          categories(),
        ],
      ),
    );
  }
}
