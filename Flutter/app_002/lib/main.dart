import 'package:flutter/material.dart';
import 'package:app_002/pages/splashScreen.dart';
import 'package:app_002/pages/login.dart';
import 'package:app_002/pages/signup.dart';
import 'package:app_002/pages/home.dart';
import 'package:app_002/pages/home2.dart';

void main() {
  runApp(
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
