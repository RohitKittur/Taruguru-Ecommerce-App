import 'package:flutter/material.dart';

class mencategory extends StatefulWidget {
  const mencategory({ Key? key }) : super(key: key);

  @override
  _mencategoryState createState() => _mencategoryState();
}

class _mencategoryState extends State<mencategory> {
  List<String> categories = ["Tshirt", "Formal Shirt", "Jeans", "Formal Pant",];
  
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: SizedBox(
        height: 28,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? Colors.black : Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20/4), //top padding 5
                height: 2,
                width: 30,
                color: selectedIndex == index ? Colors.black : Colors.transparent,
              ),
          

            ],
          ),
        ),
        ),
      );
  }
}