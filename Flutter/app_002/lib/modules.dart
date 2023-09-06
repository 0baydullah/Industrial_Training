import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  Txt(this.label, {super.key});
  String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
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
    );
  }
}

class Pwd extends StatelessWidget {
  Pwd(this.label, {super.key});
  String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: label,
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
    );
  }
}



Widget SpH(double h) => SizedBox(height: h);
