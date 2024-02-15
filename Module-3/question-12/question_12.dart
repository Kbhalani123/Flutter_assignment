import 'package:flutter/material.dart';
import 'package:k/Module-3/question-12/Screen/First-design1.dart';
import 'package:k/Module-3/question-12/Screen/Second-design2.dart';

class Question12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          centerTitle: true,
          title: Text('Question 12',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstDesign1(),
                    ),
                  );
                },
                child: Text('Design-1',style:TextStyle(fontSize: 20,color: Colors.white) ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondDesign2(),
                    ),
                  );
                },
                child: Text('Design-2',style: TextStyle(fontSize: 20,color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
