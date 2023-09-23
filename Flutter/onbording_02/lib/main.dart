import 'package:flutter/material.dart';
import 'home.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';


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


  final List<Introduction> list = [
    Introduction(
      title: 'Spider Man Logo',
      subTitle: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scra',
      imageUrl: 'assets/spiderman.png',
    ),
    Introduction(
      title: 'Spider Man',
      subTitle: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scra',
      imageUrl: 'assets/spidy.png',
    ),
    Introduction(
      title: 'Iron Man',
      subTitle: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scra',
      imageUrl: 'assets/ironman.png',
    ),
    Introduction(
      title: 'Hulk',
      subTitle: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scra',
      imageUrl: 'assets/hulk.png',
    ),
    Introduction(
      title: 'Avengers',
      subTitle: 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scra',
      imageUrl: 'assets/avenger.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFf9f9f9),
      foregroundColor: const Color(0xFFFFAA00),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          )),
      skipTextStyle: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 18,
      ),
    );
  }
}


