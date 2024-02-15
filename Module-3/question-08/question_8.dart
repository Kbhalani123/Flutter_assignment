import 'package:flutter/material.dart';

class Question8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text(
          'Question 8',
          style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              letterSpacing: 2,
              wordSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/ram.jpg',),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/ram.jpg',),
                ),
                Text(
                  'Jay Shree Ram',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/ram.jpg',),
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/ram.jpg',),
              ),
            )
          ],
        ),
      ),
    );
  }
}
