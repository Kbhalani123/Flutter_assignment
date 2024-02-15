import 'package:flutter/material.dart';

void main() => runApp(SecondScreen());

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/Vadtal.jpeg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 2),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Swaminarayan Mandir',
                    style: TextStyle(
                        letterSpacing: 0.9,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Vadtal, Kheda, Gujarat',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.star,
                          color: Colors.amber.shade400,
                        )),
                    Icon(
                      Icons.star,
                      color: Colors.amber.shade400,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber.shade400,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber.shade400,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.shade400,
                    ),
                    Text(
                      '141+',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.green,
                          size: 35,
                        ),
                        Text('CALL',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.red,
                          size: 35,
                        ),
                        Text(
                          'ROUTE',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.lightBlueAccent,
                          size: 35,
                        ),
                        Text('SHARE',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Vadtal is located in the Kheda district of Gujarat, India. It is the pilgrim centre of Swaminarayan Sampraday and the headquarter of Swaminarayans temple. Gomati is a holy lake in Vadtal. In 2011, ONGC announced that it would begin drilling operations in Vadtal in search of oil and gas.its previous exploration in 2007 in Vadtal had found an oil field, which it is developing.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
