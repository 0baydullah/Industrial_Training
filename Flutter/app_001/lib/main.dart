import 'package:flutter/material.dart';
import 'package:app_001/pages/login.dart';
import 'package:app_001/pages/home.dart';
import 'package:app_001/pages/details.dart';
import 'package:app_001/pages/cardd.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    // routes: {
    //   '/': (context) => Login(),
    //   '/home': (context) => Home(),
    //   '/details': (context) => Details(),
    // },
  ));
}
