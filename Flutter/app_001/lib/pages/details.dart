import 'package:flutter/material.dart';

class Details extends StatefulWidget {
   Details(this.url,this.name,{super.key});
   String url,name;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          Image.network("${widget.url}"),
          Text("${widget.name}",style:  TextStyle(
            color: Colors.red,
            fontSize: 69,
          ),
          ),

        ],
      ),

    );
  }
}
