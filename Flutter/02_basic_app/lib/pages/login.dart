import 'package:app_002/modules.dart';
import 'package:app_002/pages/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final mail = TextEditingController();
  final psk = TextEditingController();
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
          child: Form(
            key: formKey,
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
                     fontSize: 28,
                   ),
                ),
                SpH(15),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: mail,
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)){
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty) return "Enter a password";
                      else return null;
                    },
                    obscureText: true,
                    controller: psk,
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
                  ),
                ),
                SpH(5),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 35,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(mail.text,psk.text),
                            ),
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
                  ),
                ), // Login btn
                SpH(5),
                SizedBox(
                  height: 35,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
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
      ),
      resizeToAvoidBottomInset: false ,
    );
  }
}
