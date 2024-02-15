import 'package:flutter/material.dart';
import 'package:k/Module-3/question-11/screen/registration_screen.dart';

class Question11 extends StatefulWidget {
  const Question11({super.key});

  @override
  State<Question11> createState() => _Question11State();
}

class _Question11State extends State<Question11> {
  bool _isChecked = false;
  bool ischeckedeye = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Text('Log in to access your account',
                      style: TextStyle(fontSize: 20, color: Colors.black87)),
                  SizedBox(height: 30),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      prefixIcon: Icon(Icons.mail, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.number,
                    obscureText: !ischeckedeye,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      prefixIcon: Icon(Icons.lock, color: Colors.black87),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            ischeckedeye = !ischeckedeye;
                          });
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: ischeckedeye == true
                              ? Colors.black
                              : Colors.deepPurple,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.deepPurple)),
                        onPressed: () {
                          print('login');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an Account?',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegistrationForm(),
                              ),
                            );
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade500),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
