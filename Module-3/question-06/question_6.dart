import 'package:flutter/material.dart';

class Question6 extends StatelessWidget {
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
  double fontSize = 18;

  void increment() {
    setState(() {
      fontSize += 3;
    });
  }

  void decrement() {
    setState(() {
      fontSize -= 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text(
          'Question 6',
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade300)),
                  onPressed: () {
                    decrement();
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 40,color: Colors.black),
                  ),
                ),
                Text(
                  'Keyur',
                  style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade300)),
                  onPressed: () {
                    increment();
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 40,color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
