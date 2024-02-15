import 'package:flutter/material.dart';


class Screen extends StatelessWidget {
  late int number1;
  late int number2;

  Screen(this.number1, this.number2);

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List.generate(number2 - number1 + 1, (index) => number1 + index);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Output',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              for (int number in numbers) Text('$number',style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}