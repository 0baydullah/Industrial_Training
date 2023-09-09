import 'package:app_002/pages/home2.dart';
import 'package:flutter/material.dart';

import '../modules.dart';

class Signup extends StatefulWidget {
   Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(50, 120, 50, 200),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Form(
          child: Column(
            children: [
              Icon(
                Icons.sunny_snowing,
                color: Colors.white,
                size: 70,
              ),
              SpH(5),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontFamily: 'splash',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                  fontSize: 26,
                ),
              ),
              SpH(20),
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
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              gapPadding: 4,
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ), //first name
                        SpH(10),

                        TextFormField(
                          // validator: (value){
                          //   if(value!.isEmpty){
                          //     return "It's a required field.";
                          //   }
                          // },
                          controller: userName,
                          decoration: InputDecoration(
                            labelText: "Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              gapPadding: 4,
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ), //username
                        SpH(10),

                        TextFormField(
                          controller: email,
                          validator: (value){
                            if((value == null) || RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)){
                              return "Enter Correct Email Address";
                            }else return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              gapPadding: 4,
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ), //Email
                        SpH(10),
                        TextFormField(
                          // validator: (value){
                          //   if(value!.isEmpty){
                          //     return "It's a required field.";
                          //   }
                          // },
                          controller: phone,
                          decoration: InputDecoration(
                            labelText: "Phone",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              gapPadding: 4,
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ), // password
                       SpH(10),

                        TextFormField(
                          // validator: (value){
                          //   if(value!.isEmpty){
                          //     return "It's a required field.";
                          //   }
                          // },
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              gapPadding: 4,
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ), //religion
                        SpH(10),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
                width: 200,
                child: ElevatedButton(
                  // onPressed: () {
                  //   print("onpressed");
                  //   if(_formKey.currentState!.validate()){
                  //     print("if");
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => Home2(email.text,userName.text,email.text,phone.text,password.text),
                  //       ),
                  //     );
                  //   } else {
                  //     print("else");
                  //   }
                  // },
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> Home2(name.text,userName.text,email.text,phone.text,password.text))
                      );
                    }
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
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
