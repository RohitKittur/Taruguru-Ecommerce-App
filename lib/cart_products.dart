import 'package:flutter/material.dart';

class cart_products extends StatefulWidget {
  @override
  _cart_productsState createState() => _cart_productsState();
}

class _cart_productsState extends State<cart_products> {
  var products_on_cart = [
    {
      "name": "Blue Tshirt",
      "picture": "assets/images/tshirt/blue.png",
      "price": 85,
      "size": "M",
      "color": "Blue",
      "quantity": 1,
    },
    {
      "name": "Red Tshirt",
      "picture": "assets/images/tshirt/red.png",
      "price": 50,
      "size": "L",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products_on_cart.length,
      itemBuilder: (BuildContext context, int index) {
        return single_cart_product(
          cart_prod_name: products_on_cart[index]["name"],
          cart_prod_picture: products_on_cart[index]["picture"],
          cart_prod_price: products_on_cart[index]["price"],
          cart_prod_size: products_on_cart[index]["size"],
          cart_prod_color: products_on_cart[index]["color"],
          cart_prod_quantity: products_on_cart[index]["quantity"],
        );
      },
    );
  }
}

class single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // **********************  PICTURE *************************************
        leading: Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),

        // **********************  NAME *************************************
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                // **********************  SIZE *************************************
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("SIZE:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                // **********************  COLOR *************************************
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 8.0),
                  child: Text("COLOR:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(cart_prod_color,
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),

// **********************  PRICE *************************************
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\₹${cart_prod_price}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),


// **********************  QUANTITY *************************************

        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_drop_up, size: 50.0,)),
              Text("$cart_prod_quantity", style: TextStyle(fontSize: 40.0),),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_drop_down, size: 50.0,)),
            ],
          ),
        ),
      ),
    );
  }
}
