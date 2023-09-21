import 'dart:async';
import 'package:burger_ui/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:burger_ui/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp())); /// pushremove until
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x7FAC92),
      body: Center(
        child: Container(
          color: Colors.greenAccent[100],
          padding: EdgeInsets.all(50),
          height: 900,
          width: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 226,
                width: 261,
                child: Image.asset('assets/food.png'),
              ),
              SizedBox(
                height: 190,
                width: 290,
                child: Image.asset('assets/primaryLogo.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
