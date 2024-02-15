import 'package:flutter/material.dart';

class FirstScreen01 extends StatelessWidget {
  const FirstScreen01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:
       SingleChildScrollView(
         physics: AlwaysScrollableScrollPhysics(),
         child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(10),
              height: 280,
              width: 345,
              color: Colors.red,
            ),
            SizedBox(
              height:5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: <Widget>[
                Container(
                  height: 180,
                  width: 170,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 180,
                  width: 170,
                  color: Colors.blue,
                ),
              ]
                        ),
            ),
            SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: <Widget>[
                Container(
                  height: 180,
                  width: 170,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 180,
                  width: 170,
                  color: Colors.blue,
                ),
              ]
              ),
            ),
            SizedBox(height: 5,),
            Row(
            children: <Widget>[
              SizedBox(
                width: 6,
              ),
              Container(
                height: 90,
                width: 112,
                color: Colors.yellowAccent,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 90,
                width: 112,
                color: Colors.yellowAccent,
              ),
              SizedBox(
                width: 5,
              ),Container(
                height: 90,
                width: 110,
                color: Colors.yellowAccent,
              ),



            ]
            ),
            SizedBox(height: 5,),
            Row(
                children: <Widget>[
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 90,
                    width: 112,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 90,
                    width: 112,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),Container(
                    height: 90,
                    width: 110,
                    color: Colors.yellowAccent,
                  ),



                ]
            ),
         ]
         ),
       ),
    );

  }
}
