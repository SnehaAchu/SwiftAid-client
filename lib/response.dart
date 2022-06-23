import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:users/alert.dart';
import 'package:users/main.dart';
//import 'package:users/menu.dart';
import 'package:users/styles.dart';

class waiting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(debugShowCheckedModeBanner: false);

    return SafeArea(
        child: Scaffold(
      //drawer: Menubar(),
      appBar: AppBar(backgroundColor: Color.fromARGB(248, 32, 42, 68)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 300,
              alignment: Alignment.center,
              child: Text(
                "Your request has been notified to nearby doctors! \n\n Meanwhile please try other means of help.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(248, 26, 52, 117)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => alert2()));
                },
                child: Text(
                  "Cancel Request",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(248, 244, 244, 246)),
                ),
                style: logbutton,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
