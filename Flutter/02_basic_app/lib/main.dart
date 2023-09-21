import 'package:flutter/material.dart';
import 'package:app_002/pages/splashScreen.dart';
import 'package:app_002/pages/login.dart';
import 'package:app_002/pages/signup.dart';
import 'package:app_002/pages/home.dart';
import 'package:app_002/pages/home2.dart';

void main() {
  runApp(Appp());
}

class Appp extends StatelessWidget {
  Appp({super.key});
  String a="",b="",c="",d="",e="",f="",g="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // checking git remote
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   backgroundColor: Colors.red,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/home': (context) => Home(a,b),
        '/signup': (context) => Signup(),
        '/home2': (context) => Home2(c,d,e,f,g),
      },
    );
  }
}