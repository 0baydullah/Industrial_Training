import 'package:flutter/material.dart';
import 'package:app_002/modules.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  Home(this.mail ,this.pass, {super.key});
  String mail, pass;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 200),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Card(
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
              Icon(
                Icons.sunny_snowing,
                color: Colors.white,
                size: 90,
              ),
              SpH(35),
              Text(
                "Hello User,",
                style: TextStyle(
                  fontFamily: 'splash',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                  fontSize: 24,
                ),
              ),
              SpH(5),
              Text(
                "You are Logged in with:",
                style: TextStyle(
                  fontFamily: 't2',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "${widget.mail}",
                style: TextStyle(
                  fontFamily: 't3',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  backgroundColor: Colors.white24,
                ),
              ),
              SpH(10),
              Text(
                "And Password is:",
                style: TextStyle(
                  fontFamily: 't2',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "${widget.pass}",
                style: TextStyle(
                  fontFamily: 't3',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1,
                  backgroundColor: Colors.red[50],
                ),
              ),
              SpH(10),
              SpH(40),
              SizedBox(
                height: 35,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: StadiumBorder(),
                  ),
                ),
              ), // Login btn
              SpH(10),
              SizedBox(
                height: 35,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text(
                    "EXIT",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    shape: StadiumBorder(),
                  ),
                ),
              ), //Signup btn
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
