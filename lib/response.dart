import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:users/alert.dart';
import 'package:users/styles.dart';

class waiting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(debugShowCheckedModeBanner: false);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //drawer: Menubar(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(248, 32, 42, 68),
        centerTitle: true,
        title: Text('SwiftAid',
            style: GoogleFonts.aladin(
                fontSize: 30,
                color: Color.fromARGB(255, 249, 247, 247),
                fontWeight: FontWeight.w100)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: Container(
              height: 300,
              alignment: Alignment.center,
              child: Text(
                "Your request has been notified to nearby doctors! \n\n Meanwhile please try other means of help.",
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                    fontSize: 20, color: Color.fromARGB(248, 26, 52, 117)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
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
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, color: Color.fromARGB(248, 244, 244, 246)),
                ),
                style: logbutton,
              ),
            ),
          ),
          Image.asset(
            "images/doctors.jpg",
            color: const Color.fromRGBO(255, 255, 255, 0.5),
            colorBlendMode: BlendMode.modulate,
            height: 255,
            width: 400,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    ));
  }
}
