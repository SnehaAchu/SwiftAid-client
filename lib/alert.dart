import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:users/main.dart';
import 'package:users/styles.dart';
import 'package:users/response.dart';

class alert1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(250, 149, 147, 147),
      child: AlertDialog(
          backgroundColor: Color.fromARGB(248, 32, 42, 68),
          title: Text(
            'Are you sure?',
            style: buttonTextStyle,
          ),
          content: Text(
            'Do you want to send a request?',
            style: buttonTextStyle,
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => waiting())),
                child: Text(
                  "Yes",
                )),
            TextButton(
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => User())),
                child: Text("No"))
          ]),
    );
  }
}

class alert2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(250, 149, 147, 147),
      child: AlertDialog(
          backgroundColor: Color.fromARGB(248, 32, 42, 68),
          title: Text(
            'Are you sure?',
            style: buttonTextStyle,
          ),
          content: Text(
            'Do you want to cancel the request?',
            style: buttonTextStyle,
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => User())),
                child: Text(
                  "Yes",
                )),
            TextButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => waiting())),
                child: Text("No"))
          ]),
    );
  }
}
