import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:users/main.dart';

class Menubar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text("SwiftAid",
                    // textAlign: TextAlign.center,
                    style: GoogleFonts.alegreya(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 251, 252, 253))),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(248, 32, 42, 68),
              ),
            ),
            ListTile(
              leading:
                  Icon(Icons.star_rate, color: Color.fromARGB(255, 6, 43, 74)),
              title: Text('Rate your doctor'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading:
                  Icon(Icons.settings, color: Color.fromARGB(255, 6, 43, 74)),
              title: Text('Settings'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading:
                  Icon(Icons.feedback, color: Color.fromARGB(255, 6, 43, 74)),
              title: Text('Feedback'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading:
                  Icon(Icons.people, color: Color.fromARGB(255, 6, 43, 74)),
              title: Text('About us'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading:
                  Icon(Icons.bug_report, color: Color.fromARGB(255, 6, 43, 74)),
              title: Text('Report Bugs'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}
