import 'package:flutter/material.dart';

class Size extends StatefulWidget {
  Size(this.pad, this.set, this.img,{super.key});
  String img;
  double pad;
  int set;
  @override
  State<Size> createState() => _SizeState();
}

class _SizeState extends State<Size> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 280,
      margin: const EdgeInsets.fromLTRB(60, 245, 60, 20),
      padding: EdgeInsets.all(widget.pad),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          color: Colors.green.shade200,
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              // offset: Offset(5,5),
              color: Colors.black38,
            ),
          ]
      ),
      child: Image.asset(widget.img),
   );
  }
}
