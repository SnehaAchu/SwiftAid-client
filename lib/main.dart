import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:users/alert.dart';
import 'package:users/response.dart';
import 'package:users/styles.dart';
import 'package:users/menu.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: User(),
      );
    });
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Menubar(),
          appBar: AppBar(backgroundColor: Color.fromARGB(248, 32, 42, 68)),
          body: Column(
            children: [
              Container(
                  height: 120,
                  alignment: Alignment.topCenter,
                  //width: ,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "SwiftAid",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.alegreya(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(248, 32, 42, 68)),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                    //alignment: Alignment.topCenter,
                    height: 250,
                    child: Column(
                      children: [
                        Text("NOTE: ",
                            //textAlign: TextAlign.center,
                            style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                color: Color.fromARGB(255, 170, 170, 172))),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 30),
                          child: Text(
                              "** This app is meant for emergency situations only \n\n ** Donot completely depend on this app for help ",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 170, 170, 172))),
                        )
                      ],
                    )),
              ),
              SizedBox(
                  height: 110,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => alert1()));
                        },
                        child: Text(
                          "Request  for  Help",
                          //textAlign: TextAlign.center,
                          style: buttonTextStyle,
                        ),
                        style: logbutton),
                  ))
            ],
          )),
    );
  }
}
