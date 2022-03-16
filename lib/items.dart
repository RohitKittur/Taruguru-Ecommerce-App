import 'package:flutter/material.dart';

class items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: SizedBox(
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(0),),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 100.0,
                    child: ListTile(
                            title: Image.asset(
                              'assets/images/cat/tshirt.png', height: 50.0, width: 50.0,
                            ),
                    subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text('Tshirt', style: TextStyle(fontSize: 12.0),),
                            )
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(0),),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 100.0,
                    child: ListTile(
                            title: Image.asset(
                              'assets/images/cat/fshirt.png', height: 50.0, width: 50.0,
                            ),
                    subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text('Formal Shirt', style: TextStyle(fontSize: 12.0),),
                            )
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(0),),
                InkWell(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => jeans()));
                  },
                  child: Container(
                    width: 100.0,
                    child: ListTile(
                            title: Image.asset(
                              'assets/images/cat/jeans.png', height: 50.0, width: 50.0,
                            ),
                    subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text('Jeans', style: TextStyle(fontSize: 12.0),),
                            )
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(0),),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 100.0,
                    child: ListTile(
                            title: Image.asset(
                              'assets/images/cat/fpant.png', height: 50.0, width: 50.0,
                            ),
                    subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text('Formal Pant', style: TextStyle(fontSize: 12.0),),
                            )
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(0),),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 100.0,
                    child: ListTile(
                            title: Image.asset(
                              'assets/images/cat/tshirt.png', height: 50.0, width: 50.0,
                            ),
                    subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text('Tshirt', style: TextStyle(fontSize: 12.0),),
                            )
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}