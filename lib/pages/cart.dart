import 'package:flutter/material.dart';


import 'package:taruguru/cart_products.dart';

class cart extends StatefulWidget {
  cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.yellow,
        title: Text('CART'),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ]
    ),

    body: cart_products(),

    bottomNavigationBar: Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(child: ListTile(
            title: Text('Total:'),
            subtitle: Text('\₹800'),  
            ),),

            Expanded(child: MaterialButton(
              onPressed: (){},
              child: Text('Check Out', style: TextStyle(color: Colors.black),),
              color: Colors.yellow

            ),
            )
        ],
      ),
    )
    );
  }
}