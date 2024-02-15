import 'package:flutter/material.dart';
import 'package:k/Module-3/question-11/question_11.dart';

class RegistrationForm extends StatefulWidget {
  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _isChecked = false;
  bool ischeckedeye = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text('Join us today!',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2)),
                Text('Sign up now to become an account.',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60))),
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon:
                        Icon(Icons.person, size: 30, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60))),
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon:
                        Icon(Icons.email, size: 30, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: !ischeckedeye,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60))),
                    hintText: 'Create a password',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon:
                        Icon(Icons.lock_rounded, size: 30, color: Colors.black),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ischeckedeye = !ischeckedeye;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: ischeckedeye == true
                            ? Colors.deepPurple
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  obscureText: !ischeckedeye,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60))),
                    hintText: 'Confirm a password',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon: Icon(Icons.lock, size: 30, color: Colors.black),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ischeckedeye = !ischeckedeye;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: ischeckedeye == true
                            ? Colors.deepPurple
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.deepPurple)),
                    onPressed: () {
                      print('Signup');
                    },
                    child: Text(
                      'Sign-up',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text('Already an account?', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Question11(),
                            ));
                      },
                      child: Text('Login Here',
                          style: TextStyle(fontSize: 20, color: Colors.blue)),
                    )
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
