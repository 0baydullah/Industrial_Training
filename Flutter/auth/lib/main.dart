import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var name;
  var mail;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff0cf9ff),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 69,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  TextFormField(
                    onChanged: (value){
                      setState(() {
                        name=value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                      icon: Icon(
                        Icons.person,
                        size: 65,
                      ),
                      iconColor: Colors.black,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    onChanged: (value){
                      setState(() {
                        mail=value;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value!)) {
                        return "Enter Correct Email Address";
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Email",
                      icon: Icon(
                        Icons.mail,
                        size: 65,
                      ),
                      iconColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign Up"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
