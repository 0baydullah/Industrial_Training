import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:burger_ui/widgets/size.dart';

class SizeButtonDecoration extends StatefulWidget {
  SizeButtonDecoration(this.set,this.img,{super.key});
  int set;
  String img;
  @override
  State<SizeButtonDecoration> createState() => _SizeButtonDecorationState();
}

class _SizeButtonDecorationState extends State<SizeButtonDecoration> {

  int select=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
            children: [
              if(widget.set==1)...[
                // ButtonColor();
                Size(45, 1, widget.img),
              ]else if(widget.set==2)...[
                Size(32, 2, widget.img),
              ]
              else...[
                  Size(20, 3, widget.img),
                ]
            ]),
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.fromLTRB(60, 235+245, 60, 20),
          //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.white,
              color: select==1 ? Colors.brown : Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  // offset: Offset(5,5),
                  color: Colors.black38,
                ),
              ]
          ),
          child: TextButton(
            onPressed: (){
              setState(() {
               widget.set=1;
               select=1;
              });
            },
            child: Center(child: Text("S",
              style: TextStyle(
                fontSize: 22,
                color: select==1 ? Colors.white : Colors.black87,
              ))),

          ),
        ),


        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.fromLTRB(48+62+60, 47+235+245, 60, 20),
          //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: select==2 ? Colors.brown : Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  // offset: Offset(5,5),
                  color: Colors.black38,
                ),
              ]
          ),
          child: TextButton(
            onPressed: (){
              setState(() {
                widget.set=2;
                select=2;
              });
            },
            child: Center(child: Text("M",
              style: TextStyle(
                fontSize: 22,
                color: select==2 ? Colors.white : Colors.black87,
              ))),

          ),
        ),

/// Large

        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.fromLTRB(162+60+62, 235+245, 60, 20),
          //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.white,
              color: select==3 ? Colors.brown : Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  // offset: Offset(5,5),
                  color: Colors.black38,
                ),
              ]
          ),
          child: TextButton(
            onPressed: (){
              setState(() {
               widget.set=3;
               select=3;
              });
            },

            child: Center(child: Text("L",
              style: TextStyle(
                fontSize: 22,
                color: select==3 ? Colors.white : Colors.black87,
              ))),

          ),

        ),
        Container(
          child: Column(
            children: [

            ],
          ),
        )


      ],

    );
  }
}
