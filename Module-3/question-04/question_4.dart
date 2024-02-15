import 'package:flutter/material.dart';

class Question4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _num1Controller = TextEditingController();
  TextEditingController _num2Controller = TextEditingController();
  String _result = '';
  String _selectedOperation = 'Add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text(
          'Question 4',
          style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              letterSpacing: 2,
              wordSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter number 1',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(height: 5),
              TextField(
                controller: _num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter number 2',border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)),
              ),
              SizedBox(height: 5),
              Radio(
                value: 'Add',
                groupValue: _selectedOperation,
                onChanged: (value) {
                  setState(() {
                    _selectedOperation = value.toString();
                  });
                },
              ),
              Text('Addition'),
              Radio(
                value: 'Subtract',
                groupValue: _selectedOperation,
                onChanged: (value) {
                  setState(() {
                    _selectedOperation = value.toString();
                  });
                },
              ),
              Text('Subtraction'),
              Radio(
                value: 'Multiply',
                groupValue: _selectedOperation,
                onChanged: (value) {
                  setState(() {
                    _selectedOperation = value.toString();
                  });
                },
              ),
              Text('Multiplication'),
              Radio(
                value: 'Divide',
                groupValue: _selectedOperation,
                onChanged: (value) {
                  setState(() {
                    _selectedOperation = value.toString();
                  });
                },
              ),
              Text('Division'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  double num1 = double.parse(_num1Controller.text);
                  double num2 = double.parse(_num2Controller.text);

                  switch (_selectedOperation) {
                    case 'Add':
                      _result = (num1 + num2).toString();
                      break;
                    case 'Subtract':
                      _result = (num1 - num2).toString();
                      break;
                    case 'Multiply':
                      _result = (num1 * num2).toString();
                      break;
                    case 'Divide':
                      _result = (num1 / num2).toString();
                      break;
                  }
                  setState(() {});
                },
                child: Text('Calculate'),
              ),
              SizedBox(height: 20),
              Text(
                'Result: $_result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
