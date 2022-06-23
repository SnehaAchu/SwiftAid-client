import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ButtonStyle logbutton = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all<Color>(Color.fromARGB(232, 230, 44, 7)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w))));

TextStyle buttonTextStyle = TextStyle(
    color: Color.fromARGB(255, 252, 251, 251),
    fontSize: 25,
    fontWeight: FontWeight.w800);
