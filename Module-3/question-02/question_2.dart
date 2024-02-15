import 'package:flutter/material.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  TextEditingController _numController = TextEditingController();
  String _reverseNum = '';

  void _calculateReverse() {
    String input = _numController.text;
    String reverse = input.split('').reversed.join();
    setState(() {
      _reverseNum = reverse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue.shade300,
          title: Text(
            'Question-2',
            style: TextStyle(
              fontSize: 40,
              letterSpacing: 2,
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (value) => _calculateReverse(),
                  controller: _numController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'enter the number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.arrow_upward_outlined,
                  size: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Upper Enter Number To Reverse Number Here ',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.arrow_downward_rounded,
                  size: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Text('Reverse = ',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                    Text(
                      '$_reverseNum',
                      style: TextStyle(fontSize: 30,color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
