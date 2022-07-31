import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:users/cancel.dart';
import 'package:users/main.dart';
import 'package:users/response.dart';
import 'package:geolocator/geolocator.dart';

// ignore: must_be_immutable
class alert1 extends StatelessWidget {
  var av;
  late Position currentposition;
  var geolocator = Geolocator();

  void locateposition() async {
    ////////////////////////////////////
    // CHECKS IF GPS IS ENABLED OR NOT
    ///////////////////////////////////
    bool servicestatus = await Geolocator.isLocationServiceEnabled();

    if (servicestatus) {
      print("GPS service is enabled");
    } else {
      print("GPS service is disabled.");
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    currentposition = position;
    print(position.latitude);
    print(position.longitude);

    // LatLng latLngposition = LatLng(position.latitude, position.longitude);

    // CameraPosition cameraPosition =
    //     new CameraPosition(target: latLngposition, zoom: 1);

    //newmap.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  @override
  Widget build(BuildContext context) {
    av() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => waiting()));
    }

    return Container(
      color: Color.fromARGB(250, 149, 147, 147),
      child: AlertDialog(
          backgroundColor: Color.fromARGB(248, 32, 42, 68),
          title: Text(
            'Are you sure?',
            style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 253, 252, 252), fontSize: 20),
          ),
          content: Text(
            'Do you want to send a request?',
            style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 253, 252, 252), fontSize: 17),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => User())),
                child: Text("No",
                    style: GoogleFonts.aBeeZee(
                        color: Color.fromARGB(255, 253, 252, 252),
                        fontSize: 15))),
            TextButton(
                onPressed: () => {
                      print("Before Request"),
                      locateposition(),
                      print("After Request"),
                      av()
                    },
                child: Text("Yes",
                    style: GoogleFonts.aBeeZee(
                        color: Color.fromARGB(255, 253, 252, 252),
                        fontSize: 15)))
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
            style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 253, 252, 252), fontSize: 20),
          ),
          content: Text(
            'Do you want to cancel the request?',
            style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 253, 252, 252), fontSize: 17),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => waiting())),
                child: Text(
                  "No",
                  style: GoogleFonts.aBeeZee(
                      color: Color.fromARGB(255, 253, 252, 252), fontSize: 15),
                )),
            TextButton(
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => cancel())),
                child: Text(
                  "Yes",
                  style: GoogleFonts.aBeeZee(
                      color: Color.fromARGB(255, 253, 252, 252), fontSize: 15),
                ))
          ]),
    );
  }
}
