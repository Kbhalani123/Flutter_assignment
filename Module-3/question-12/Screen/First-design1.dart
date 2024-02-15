import 'package:flutter/material.dart';

class FirstDesign1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(Icons.arrow_back,),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.search),
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text('Restaurant',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  SizedBox(
                    width: 50,
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
                      alignment: Alignment.center,
                      height: 70,
                     width: 70,
                     //color: Colors.grey,
                      child: Text('R',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
                    )
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text('20-30min',
                      style: TextStyle(
                          backgroundColor: Colors.grey.shade600,
                          color: Colors.white,fontSize: 20)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('2.4km', style: TextStyle(color: Colors.grey.shade600,fontSize: 20)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Restaurant',
                      style: TextStyle(color: Colors.grey.shade600,fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: <Widget>[
                  Text('Orange Sandwiches is delicious',
                      style: TextStyle(fontSize: 15)),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.star_border_purple500_sharp,
                    color: Colors.orange,
                    size: 28,
                  ),
                  Text('4.7', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    FilledButton(
                      style: ButtonStyle(
                          textStyle: MaterialStatePropertyAll(TextStyle(
                            fontSize: 12,
                          )),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange.shade300)),
                      onPressed: () {},
                      child: Text('Recommand',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FilledButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child: Text('Popular',
                          style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FilledButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child: Text('Noodles',
                          style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FilledButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child:
                          Text('Pizza', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Card(
                        elevation: 3,
                          child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(
                                  'assets/images/pavbhaji1.jpg'),
                            ),
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Pav Bhaji',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                Text('No1.in sales',
                                    style: TextStyle(
                                        color: Colors.orange.shade300)),
                                Text('\$25',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ]),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.all(12),
                                child: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: Card(
                          elevation: 3,
                            child: Row(
                          children: [
                            SizedBox(width: 10),
                            Column(children: [
                              SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage('assets/images/pizzas.png'),
                              ),
                            ]),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Italian Pizza',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  Text('No1.in sales',
                                      style: TextStyle(
                                          color: Colors.grey.shade500)),
                                  Text('\$18',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ]),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Card(
                        elevation: 3,
                          child: Row(
                        children: [
                          Column(children: [
                            CircleAvatar(
                              backgroundColor: Colors.white38,
                              radius: 70,
                              backgroundImage:
                                  AssetImage('assets/images/pasta(1).jpg'),
                            ),
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Pasta',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                Text('No1.in sales',
                                    style: TextStyle(
                                        color: Colors.grey.shade500)),
                                Text('\$12',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ]),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.all(12),
                                //color: Colors.black,
                                // height: 30,
                                //width: 20,
                                child: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),

                    height: 60,
                    width: 60,
                    child: Icon(Icons.shopping_bag_outlined,size: 40,)
                    //color: Colors.orange,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
