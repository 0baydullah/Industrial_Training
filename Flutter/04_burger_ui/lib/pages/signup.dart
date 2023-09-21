import 'package:burger_ui/pages/login.dart';
import 'package:flutter/material.dart';

import 'forgotepass.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7FAC92),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            // verticalDirection: VerticalDirection,
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Spacer(),
                  const Text("Sign Up", style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),),
                  const Spacer(),
                  TextButton(
                    child: const Text("Login",
                      style: TextStyle(color: Colors.brown , fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                    },

                  )
                ],
              ),
              const SizedBox(height: 50,),
              Container(
                height: 55,
                width: 375,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter your name..",
                    //border: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 55,
                width: 375,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone No",
                    hintText: "Enter your phone number..",
                    //border: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              /// pass
              Container(
                height: 55,
                width: 375,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password..",
                    //border: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Checkbox(
                    checkColor: Colors.black,
                   //fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10,),
                  const Column(
                    children: [
                      Text("I would like to receive your newsletter and", style: TextStyle(color: Colors.blueGrey),),
                      Text("other promotional information", style: TextStyle(color: Colors.blueGrey),),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 40,),
              SizedBox(
                width: 343,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: const Text("Sign Up", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                ),
              ),
              const SizedBox(height: 10,),
              TextButton(
                child: const Text("Forgot your password?",
                  style: TextStyle(color:Colors.brown,fontSize: 15, fontWeight: FontWeight.w500),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPass()));
                },

              )
            ],
          ),
        ),
      ),
    );
  }
}
