import 'dart:math';
import 'package:flutter/material.dart';


class Question5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color selectedColor = Colors.white;

  List<Color> colorList = [
    Colors.lightBlue,
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.deepPurple,
    Colors.pink.shade100,
    Colors.purple.shade700,
    Colors.brown.shade700,

  ];
  void getRandomColor() {
    var index = Random().nextInt(colorList.length);
    setState(() {
      selectedColor = colorList[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text('Question 5',
          style: TextStyle(
              fontSize: 40,
              letterSpacing: 2,
              wordSpacing: 2,
              fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Container(
          child: FilledButton(
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)) ,
            onPressed: () {
              getRandomColor();
          }, child: Text('Click to Change Background',style: TextStyle(fontSize: 20)),
        )
        ),
      ),
    );
  }
}
