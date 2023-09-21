import 'package:flutter/material.dart';
import 'main.dart';

class Details extends StatelessWidget {
  Details(this.url, {super.key});
  String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(child: Center(child: Image.network("${url}"))),

    );
  }
}
