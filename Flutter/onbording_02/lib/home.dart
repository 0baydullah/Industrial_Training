import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 69,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}