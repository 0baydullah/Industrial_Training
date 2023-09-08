import 'package:flutter/material.dart';

import '../modules.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 200),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue,Colors.purple],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            Text("sign Up"),
            Card(
              elevation: 10,
              color: Colors.blue[300],
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.purple,
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              shadowColor: Colors.grey[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Txt("Email"),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
