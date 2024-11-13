import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivesample/functions.dart';
import 'package:hivesample/login.dart';
import 'package:hivesample/model.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("welcome,${box1!.email}"),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
              icon: Text(
                'sign out',
                style: GoogleFonts.aclonica(fontSize: 18, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
