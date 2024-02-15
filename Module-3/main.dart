import 'package:flutter/material.dart';
import 'package:k/Module-3/model/question.dart';
import 'package:k/Module-3/question-01/question_1.dart';
import 'package:k/Module-3/question-02/question_2.dart';
import 'package:k/Module-3/question-03/question_3.dart';
import 'package:k/Module-3/question-04/question_4.dart';
import 'package:k/Module-3/question-05/question_5.dart';
import 'package:k/Module-3/question-06/question_6.dart';
import 'package:k/Module-3/question-07/question_7.dart';
import 'package:k/Module-3/question-08/question_8.dart';
import 'package:k/Module-3/question-09/question_9.dart';
import 'package:k/Module-3/question-10/question_10.dart';
import 'package:k/Module-3/question-11/question_11.dart';
import 'package:k/Module-3/question-12/question_12.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 3',
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  List<Question> questionList = [
    Question(questionNo: 1, question: 'Create below screens'),
    Question(
        questionNo: 2,
        question:
            'Create an application to take input number from user and print itsreverse number in TextField'),
    Question(
        questionNo: 3,
        question:
            'Create an application to input 2 numbers from user and all numbersbetween those 2 numbers in next activity'),
    Question(
        questionNo: 4,
        question:
            'Create an application with radio buttons (Add,Substraction,Multiply, Division)EditText(number1,number2) and print result asper user choice from radio button in TextView'),
    Question(
        questionNo: 5,
        question:
            'Create an application to change background when button is clicked'),
    Question(
        questionNo: 6,
        question:
            'Create an application to increate font size when plus button click and decrease when minus button click'),
    Question(
        questionNo: 7,
        question:
            'Create an application to display Textview when checkbox is checked and hide otherwise'),
    Question(
        questionNo: 8,
        question: 'Write a program to show four images around Textview.'),
    Question(
        questionNo: 9,
        question:
            'Write a program in android display screen color which the Color will be select from the radio button.'),
    Question(
        questionNo: 10,
        question:
            'Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.'),
    Question(questionNo: 11, question: 'Create login and registration form'),
    Question(questionNo: 12, question: 'Design below screens'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text('Module 3',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: 2,
                color: Colors.black87)),
      ),
      body: ListView.builder(
        itemCount: questionList.length,
        itemBuilder: (context, index) {
          Question question = questionList[index];
          return Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.blue[50],
            child: ListTile(
              onTap: () {
                _itemClicked(question, context);
              },
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('${question.questionNo}',
                    style: TextStyle(color: Colors.white)),
              ),
              title: Text(question.question,
                  style: TextStyle(fontWeight: FontWeight.w400)),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }

  void _itemClicked(Question question, BuildContext context) {
    switch (question.questionNo) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question1(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question2(),
          ),
        );
        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question3(),
            ));
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question4(),
          ),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question5(),
          ),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question6(),
          ),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question7(),
          ),
        );
        break;
      case 8:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question8(),
            ));
        break;
      case 9:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question9(),
          ),
        );
        break;
      case 10:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question10(),
            ));
        break;
      case 11:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question11(),
            ));
        break;
      case 12:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question12(),
          ),
        );
        break;
    }
  }
}
