import "package:app_001/pages/home.dart";
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final value = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 241, 227),
      // appBar: AppBar(
      //   title: Text(
      //     "Items",
      //   ),
      //   backgroundColor: Colors.cyan[900],
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 205),
            Text(
              "WELCOME",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 19.0,
                fontSize: 65.0,
                fontFamily: 'IndieFlower',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "User...!!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 9.0,
                fontSize: 50.0,
                fontFamily: 'IndieFlower',
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: value,
                decoration: InputDecoration(
                  labelText: "Enter your NAME.......",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home(value.text)));
              },
              icon: Icon(
                Icons.arrow_right,
                size: 50,
              ),
              label: Text(
                "Enter !   ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan[900],
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
