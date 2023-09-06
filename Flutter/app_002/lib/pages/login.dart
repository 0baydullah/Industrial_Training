import 'package:app_002/modules.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              SpH(10),
              Text(
                "Log In",
                 style: TextStyle(
                   fontFamily: 'splash',
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                   letterSpacing: 4,
                   fontSize: 30,
                 ),
              ),
              SpH(20),
              Txt("Email"),
              Pwd("Password"),
              SpH(20),
              SizedBox(
                height: 35,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text(
                    "Log In",
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
                    Navigator.pushNamed(context, '/signpu');
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[900],
                    shape: StadiumBorder(),
                  ),
                ),
              ), //Signup btn

            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false ,
    );
  }
}
