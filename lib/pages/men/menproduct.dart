import 'package:flutter/material.dart';
import 'package:taruguru/pages/productdetails.dart';

class menproduct extends StatefulWidget {
  @override
  _menproductState createState() => _menproductState();
}

class _menproductState extends State<menproduct> {
  var product_list = [
    {
      "name": "Blue Tshirt",
      "picture": "assets/images/tshirt/blue.png",
      "old_price": 120,
      "price": 85,
      "material": "Cotton"
    },
    {
      "name": "Red Tshirt",
      "picture": "assets/images/tshirt/red.png",
      "old_price": 100,
      "price": 50,
      "material": "Cotton"
    },
    {
      "name": "Black Tshirt",
      "picture": "assets/images/tshirt/black.png",
      "old_price": 120,
      "price": 85,
      "material": "Cotton"
    },
    {
      "name": "White Tshirt",
      "picture": "assets/images/tshirt/white.png",
      "old_price": 100,
      "price": 50,
      "material": "Cotton"
    },
    {
      "name": "Blue Tshirt",
      "picture": "assets/images/tshirt/blue.png",
      "old_price": 120,
      "price": 85,
      "material": "Cotton"
    },
    {
      "name": "Red Tshirt",
      "picture": "assets/images/tshirt/red.png",
      "old_price": 100,
      "price": 50,
      "material": "Cotton"
    },
    {
      "name": "Black Tshirt",
      "picture": "assets/images/tshirt/black.png",
      "old_price": 120,
      "price": 85,
      "material": "Cotton"
    },
    {
      "name": "White Tshirt",
      "picture": "assets/images/tshirt/white.png",
      "old_price": 100,
      "price": 50,
      "material": "Cotton"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
              prod_material: product_list[index]['material']
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_material;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_material,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => productdetails(
                  product_detail_name: prod_name,  //passing the values to product destail page
                  product_detail_picture: prod_picture,  //passing the values to product destail page
                  product_detail_old_price: prod_old_price,  //passing the values to product destail page
                  product_detail_price: prod_price,   //passing the values to product destail page
                  product_detail_material: prod_material,  //passing the values to product destail page
                )));
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                //child: Container(
                  //color: Colors.black,
                  child: Text(
                    "\₹$prod_old_price",
                    textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough),
                      ),
                ),

              Align(
                alignment: Alignment.centerRight,
                //child: Container(
                  //color: Colors.black,
                  child: Text(
                    "\₹$prod_price",
                    textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                ),
              //),
              
                    ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
