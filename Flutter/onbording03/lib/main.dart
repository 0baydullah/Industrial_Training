import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';


void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onbording(),
    );
  }
}

class Onbording extends StatelessWidget {
  Onbording({super.key});


  final List<OnbordingData> list = [
    OnbordingData(
      title: 'Spider Man Logo',
      desc: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scra',
      imagePath: 'assets/spiderman.png',
    ),
    OnbordingData(
      title: 'Spider Man',
      desc: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scra',
      imagePath: 'assets/spidy.png',
    ),

    OnbordingData(
      title: 'Avengers',
      desc: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scra',
      imagePath: 'assets/avenger.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreen(list,MaterialPageRoute(builder: (context) => Home()),
    );
  }
}