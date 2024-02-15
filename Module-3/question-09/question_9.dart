import 'package:flutter/material.dart';


class Question9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorScreenApp(),
    );
  }
}

class ColorScreenApp extends StatefulWidget {
  @override
  _ColorScreenAppState createState() => _ColorScreenAppState();
}

class _ColorScreenAppState extends State<ColorScreenApp> {
  Color _selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text(
          'Question 9',
          style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              letterSpacing: 2,
              wordSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: _selectedColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile<Color>(
                title: Text('White',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                value: Colors.white,
                groupValue: _selectedColor,
                onChanged: (Color? value) {
                  setState(() {
                    _selectedColor = value!;
                  });
                },
              ),
              RadioListTile<Color>(
                title: Text('Red',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                value: Colors.red,
                groupValue: _selectedColor,
                onChanged: (Color? value) {
                  setState(() {
                    _selectedColor = value!;
                  });
                },
              ),
              RadioListTile<Color>(
                title: Text('Green',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                value: Colors.green,
                groupValue: _selectedColor,
                onChanged: (Color? value) {
                  setState(() {
                    _selectedColor = value!;
                  });
                },
              ),
              RadioListTile<Color>(
                title: Text('Blue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                value: Colors.blue,
                groupValue: _selectedColor,
                onChanged: (Color? value) {
                  setState(() {
                    _selectedColor = value!;
                  });
                },
              ),
              RadioListTile<Color>(
                title: Text('yellow',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                value: Colors.yellow,
                groupValue: _selectedColor,
                onChanged: (Color? value) {
                  setState(() {
                    _selectedColor = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}