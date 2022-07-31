import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class accept extends StatefulWidget {
  @override
  State<accept> createState() => _acceptState();
}

class _acceptState extends State<accept> {
  late Position currentposition;
  var geolocator = Geolocator();
  String adress = '';

  void locateposition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentposition = position;

    LatLng latLngposition = LatLng(position.latitude, position.longitude);
    print(latLngposition);
    List<Placemark> placemark = await placemarkFromCoordinates(
        latLngposition.latitude, latLngposition.longitude);
    print(placemark);
    Placemark place = placemark[0];
    adress =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    locateposition();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                  "Your request has been accepted! \n\n Doctor located at .",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, color: Color.fromARGB(248, 26, 52, 117)),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                  //color: Colors.yellow,
                  height: 25,
                  child: Text(
                    ' ${adress}',
                    style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                  ),
                )),
            Image.asset(
              "images/arrive.jpg",
              color: const Color.fromRGBO(255, 255, 255, 0.645),
              colorBlendMode: BlendMode.modulate,
              height: 350,
              width: 400,
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}
