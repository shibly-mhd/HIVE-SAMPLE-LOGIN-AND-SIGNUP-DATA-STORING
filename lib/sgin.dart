import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivesample/functions.dart';
import 'package:hivesample/login.dart';
import 'package:hivesample/model.dart';

class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

TextEditingController usernamecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: usernamecontroller,
              decoration: InputDecoration(
                  hintText: 'name', hintStyle: TextStyle(color: Colors.white)),
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  hintText: 'Email', hintStyle: TextStyle(color: Colors.white)),
            ),
            TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                  hintText: 'password',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            IconButton(
              onPressed: () {
                signupbtn(context);
              },
              icon: Text(
                'SIGN UP',
                style: GoogleFonts.aclonica(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> signupbtn(BuildContext context) async {
  final username = usernamecontroller.text.trim();
  final email = emailcontroller.text.trim();
  final password = passwordcontroller.text.trim();
  if (username.isNotEmpty && password.isNotEmpty && email.isNotEmpty) {
    final data = id(name: username, email: email, password: password);
    saveprofile(data);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
    print('added the form');
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please fill all fields'),
      ),
    );
    print('enter something');
  }
}
