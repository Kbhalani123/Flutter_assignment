import 'package:flutter/material.dart';

class Question10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double rValue = 0, gValue = 0, bValue = 0;

  Color? _color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text(
          'Question 10',
          style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              letterSpacing: 2,
              wordSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: _color ?? Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor:Colors.white,
                      child: Text('R',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('0'),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        child: Slider(
                          activeColor: Colors.red,
                          value: rValue,
                          min: 0,
                          max: 255,
                          onChanged: (value) {
                            rValue = value;
                            changeBackground();
                          },
                        ),
                      ),
                    ),
                    Text('255')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor:Colors.white,
                      child: Text('G',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('0'),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        child: Slider(
                          activeColor: Colors.green,
                          value: gValue,
                          min: 0,
                          max: 255,
                          onChanged: (value) {
                            gValue = value;
                            changeBackground();
                          },
                        ),
                      ),
                    ),
                    Text('255')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor:Colors.white,
                      child: Text('B',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('0'),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        child: Slider(
                          activeColor: Colors.blue,
                          value: bValue,
                          min: 0,
                          max: 255,
                          onChanged: (value) {
                            bValue = value;
                            changeBackground();
                          },
                        ),
                      ),
                    ),
                    Text('255')
                  ],
                )
              ],
            )),
      ),
    );
  }

  void changeBackground() {
    setState(() {
      _color =
          Color.fromARGB(255, rValue.round(), gValue.round(), bValue.round());
    });
  }
}
