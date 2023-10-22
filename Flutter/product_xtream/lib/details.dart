import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  const Details({required this.name, required this.details, required this.id, super.key});

  final String name;
  final int id;
  final int details;


  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"),centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            Text("Product Name: ${widget.name}"),
            Text("Product Price: ${widget.id}"),
            Text("Product ID: ${widget.details}"),
          ],
        ),
      ),
    );
  }
}
