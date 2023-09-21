import 'package:burger_ui/pages/forgotepass.dart';
import 'package:burger_ui/pages/home1.dart';
import 'package:burger_ui/pages/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  final phoneController = TextEditingController();
  final passController = TextEditingController();
  bool isChecked = false;



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(

              children: [
                Row(
                  children: [
                    const Spacer(),
                    const Spacer(),
                    const Text("Login", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800),),
                    const Spacer(),
                    TextButton(
                      child: const Text("Sign Up",
                        style: TextStyle(color: Colors.brown, fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                      },

                    )
                  ],
                ),
                const SizedBox(height: 120,),
                Container(
                  height: 55,
                  width: 375,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: "Phone No",
                      hintText: "Enter your phone number.",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
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
                    keyboardType: TextInputType.visiblePassword,
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password.",
                      //border: OutlineInputBorder(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.black,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 10,),
                    const Text("remember me", style: TextStyle(color: Colors.blueGrey),),
                  ],
                ),
                const SizedBox(height: 60,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home1()));
                    },
                    child: const Text("Sign In", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
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