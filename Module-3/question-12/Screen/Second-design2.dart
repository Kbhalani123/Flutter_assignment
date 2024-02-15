import 'package:flutter/material.dart';

class SecondDesign2 extends StatefulWidget {
  @override
  State<SecondDesign2> createState() => _SecondDesign2State();
}

class _SecondDesign2State extends State<SecondDesign2> {
  List<String> ingredient = ['cheese', 'Tomato', 'Olive', 'Paneer'];
  List<String> ingredientImageList = [
    'assets/images/cheese.png',
    'assets/images/tomato.jpg',
    'assets/images/olives.png',
    'assets/images/Paneer.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: 25),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.favorite_border, size: 25),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 70),
                  Text('Pizza',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.watch_later_outlined, color: Colors.blue),
                          Text('50min',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.amber),
                          Text('4.8',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.local_fire_department,
                              color: Colors.orange),
                          Text('325 Kcal',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text('\$12',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 5),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      color: Colors.amber,
                                      child: Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Text('-',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child:
                                                Text('1', style: TextStyle(
                                                  color: Colors.black
                                                )),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text('+',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ingredient',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Container(
                        height: 130,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 130,
                                      child: Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 30,
                                              backgroundImage: AssetImage(
                                                  ingredientImageList[index]),
                                            ),
                                            Text(ingredient[index]),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(
                          'Pizza is a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies,tomato, onions, olives, pineapple, meat, etc.)'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 110,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                color: Colors.amber,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 7),
                                    Icon(Icons.shopping_bag_outlined, size: 30),
                                    SizedBox(width: 7),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: Text('1'),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              color: Colors.grey.shade100,
            ),
          ),
          Positioned(
            top: -90,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/pizzas.png'),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.amber.shade700,
    );
  }
}
