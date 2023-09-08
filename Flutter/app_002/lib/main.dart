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
  const Appp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   backgroundColor: Colors.red,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/signup': (context) => Signup(),
        '/home2': (context) => Home2(),
      },
    );
  }
}
