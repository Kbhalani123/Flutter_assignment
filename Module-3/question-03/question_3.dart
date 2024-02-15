import 'package:flutter/material.dart';
import 'package:k/Module-3/question-03/screen/screen_1.dart';

class Question3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  List<int> _allOutput = [0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text('Question 3',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                wordSpacing: 2)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter first number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter second number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(
                      int.parse(_controller1.text),
                      int.parse(_controller2.text),
                    ),
                  ),
                );
              },
              child: Text('Result',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
