import 'package:flutter/material.dart';
import 'package:app_002/modules.dart';
import 'package:flutter/services.dart';

class Home2 extends StatefulWidget {
  Home2(this.name,this.username,this.mail, this.phone ,this.pass, {super.key});

  String name, username, mail, phone, pass;
  @override
  State<Home2> createState() => _Home2State();
}


class _Home2State extends State<Home2> {
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
                size: 60,
              ),
              SpH(15),
              Text(
                "Dear User, \n Please check your info: ",
                style: TextStyle(
                  fontFamily: 'splash',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                  fontSize: 18,

                ),
              ),
              SpH(5),
              Text(
                "Name:",
                style: TextStyle(
                  fontFamily: 't2',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "${widget.name}",
                style: TextStyle(
                  fontFamily: 't3',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  backgroundColor: Colors.white24,
                ),
              ),
              SpH(10),
              Text(
                "Mail:",
                style: TextStyle(
                  fontFamily: 't2',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "${widget.mail}",
                style: TextStyle(
                  fontFamily: 't3',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  backgroundColor: Colors.white24,
                ),
              ),
              SpH(10),
              Text(
                "UserName:",
                style: TextStyle(
                  fontFamily: 't2',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "${widget.username}",
                style: TextStyle(
                  fontFamily: 't3',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  backgroundColor: Colors.white24,
                ),
              ),
              SpH(10),
              Text(
                "Phone:",
                style: TextStyle(
                  fontFamily: 't2',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "${widget.phone}",
                style: TextStyle(
                  fontFamily: 't3',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  backgroundColor: Colors.white24,
                ),
              ),
              SpH(10),
              Text(
                "Password:",
                style: TextStyle(
                  fontFamily: 't2',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "${widget.pass}",
                style: TextStyle(
                  fontFamily: 't3',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  backgroundColor: Colors.white24,
                ),
              ),
              SpH(10),

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

