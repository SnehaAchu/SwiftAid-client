import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:geolocator/geolocator.dart';
//import 'package:geocoding/geocoding.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

/*class accept extends StatefulWidget {
  @override
  State<accept> createState() => _acceptState();
}

class _acceptState extends State<accept> {
  late GoogleMapController newmap;

  late Position currentposition;
  var geolocator = Geolocator();
  String adress = ''; ///////////////////////////////////////////////////////

  void locateposition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentposition = position;

    LatLng latLngposition = LatLng(position.latitude, position.longitude);
    // pos = latLngposition.toString();
    print(latLngposition);
    //print(pos);
    List<Placemark> placemark = await placemarkFromCoordinates(
        ////////////////////////////
        latLngposition.latitude,
        latLngposition
            .longitude); //////////////////////////////// ( latLngposition doctor de loction aan  )
    print(placemark); ////////////////////////////
    Placemark place = placemark[0]; //////////////////////////////
    adress = //////////////////////////////
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}'; ////////////////////////////////
    setState(() {});
    CameraPosition cameraPosition =
        new CameraPosition(target: latLngposition, zoom: 20);

    newmap.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }*/
class accept extends StatelessWidget {
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
                  "Your request has been accepted! \n\n Doctor arriving from Kanjirapally.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, color: Color.fromARGB(248, 26, 52, 117)),
                ),
              ),
            ),
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
