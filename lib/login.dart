import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivesample/functions.dart';
import 'package:hivesample/home.dart';
import 'package:hivesample/sgin.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final TextEditingController namecontroller = TextEditingController();
final TextEditingController Emailcontroller = TextEditingController();
final TextEditingController Passwordcontroller = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                  hintText: 'name', hintStyle: TextStyle(color: Colors.white)),
            ),
            TextFormField(
              controller: Emailcontroller,
              decoration: InputDecoration(
                  hintText: 'Email', hintStyle: TextStyle(color: Colors.white)),
            ),
            TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            IconButton(
              onPressed: () {
                logging(context);
              },
              icon: Text(
                'login',
                style: GoogleFonts.aclonica(color: Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                gotosignuppage(context);
              },
              child: RichText(
                text: TextSpan(
                  text: 'have already account?',
                  style:
                      GoogleFonts.aclonica(fontSize: 18, color: Colors.white),
                  children: [
                    TextSpan(
                        text: 'signup?',
                        style: GoogleFonts.aclonica(
                            fontSize: 18, color: Colors.green),
                        recognizer: TapGestureRecognizer()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void logging(BuildContext context) {
    final email = namecontroller.text.trim();
    final password = passwordcontroller.text.trim();
    final storedEmail = box1!.email;
    final storedPass = box1!.password;

    if (email == storedEmail && password == storedPass) {
      print("loggin success");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    } else {
      print("error");
    }
  }

  Future<void> gotosignuppage(BuildContext context) async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => signup(),
      ),
    );
  }
}
