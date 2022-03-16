import 'package:flutter/material.dart';
import 'package:taruguru/pages/men/appbar.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          width: 400,
          child: Card(
            /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),*/
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            color: Colors.white,
            elevation: 8, 
            shadowColor: Colors.yellow,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => appbar()));
              },
              child: Image.asset(
                'assets/images/mens.jpg', fit: BoxFit.fill, alignment: Alignment.center,
      ),
              /*child: Center(
                  //mainAxisSize: MainAxisSize.min,
                  child: const ListTile(
                title: Center(
                  child: Text(
                    "MEN",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              )),*/
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(2),
          ),

          Container(
          height: 130,
          width: 400,
          child: Card(
            /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),*/
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            color: Colors.white,
            elevation: 8,
            shadowColor: Colors.yellow,
            child: InkWell(
              onTap: (){},
              child: Image.asset(
                'assets/images/womens.jpg', fit: BoxFit.fill, alignment: Alignment.center,
      ),
              /*child: Center(
                  //mainAxisSize: MainAxisSize.min,
                  child: const ListTile(
                title: Center(
                  child: Text(
                    "KID",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              )),*/
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(2),
          ),


        Container(
          height: 130,
          width: 400,
          child: Card(
            /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),*/
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            color: Colors.white,
            elevation: 8,
            shadowColor: Colors.yellow,
            child: InkWell(
              onTap: (){},
              child: Image.asset(
                'assets/images/kids.jpg', fit: BoxFit.fill, alignment: Alignment.center,
      ),
              /*child: Center(
                  //mainAxisSize: MainAxisSize.min,
                  child: const ListTile(
                title: Center(
                  child: Text(
                    "KID",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              )),*/
            ),
          ),
        ),
      ],
    );
    




          }
}
