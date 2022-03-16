//import 'dart:js';

import 'package:flutter/material.dart';

import 'package:taruguru/pages/cart.dart';

class productdetails extends StatefulWidget {
  //const productdetails({ Key? key }) : super(key: key);

  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;
  final product_detail_material;

  productdetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_old_price,
    this.product_detail_price,
    this.product_detail_material,
  });

  @override
  _productdetailsState createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
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

      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                height: 40,
                color: Colors.white,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0, 
                  ),),

                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(child: 
                      Text("\₹${widget.product_detail_old_price}", 
                      style: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough),
                      ),
                      ),

                      Expanded(child: 
                      Text("\₹${widget.product_detail_price}", 
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,),
                      )
                      )
                    ],
                  )
                ),
              ),
            ),
          ),

//          ===== S>C>Q BUTTON =====
          
          Row(
            children: [

//             ===== SIZE BUTTON =====

              Expanded(child: 
              MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text('Size'),
                    content: Text("Choose the Size"),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text("Close", style: TextStyle(color: Colors.blue),
                      ),
                      ),
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: [
                  Expanded(child: 
                  Text("Size"),
                  ),
                  Expanded(child: 
                  Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
              ),
              ),

              //             ===== COLOR BUTTON =====

              Expanded(child: 
              MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text("Color"),
                    content: Text("Choose the Color"),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text("Close", style: TextStyle(color: Colors.blue),
                      )
                      ),
                    ],
                  );

                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: [
                  Expanded(child: 
                  Text("Color"),
                  ),
                  Expanded(child: 
                  Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
              ),
              ),

              //             ===== QUANTITY BUTTON =====

              Expanded(child: 
              MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text("Quantity"),
                    content: Text("Choose the Quantity"),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text("Close", style: TextStyle(color: Colors.blue),),
                      )
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: [
                  Expanded(child: 
                  Text("Qty"),
                  ),
                  Expanded(child: 
                  Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
              ),
              ),
            ],
          ),

          //          ===== BUY BUTTON =====
          
          Row(
            children: [
              Expanded(child: 
              MaterialButton(onPressed: (){},
              color: Colors.yellow,
              textColor: Colors.black,
              elevation: 0.2,
                  child: 
                  Text("Buy", style: TextStyle(fontSize: 18.0),),
                  ),
              ),

              IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),

              IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}), 

            ],
          ),

          //  ****************************  PRODUCT DETAIL  **************************

          Divider(),
          ListTile(
            title: Text("Product Details:"),
            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. '),
            ),
            //Divider(),
            Row(
              children: [
                Padding(padding: const EdgeInsets.fromLTRB(17.0, 5.0, 5.0, 5.0),
                child: Text("Material:", style: TextStyle(color: Colors.black),),),
                Padding(padding: const EdgeInsets.all(0.0),
                child: Text(widget.product_detail_material,
                style: TextStyle(color: Colors.grey,
               ),
                ),
                ),
              ],
            )

        ],
          ),
    );
  }
}