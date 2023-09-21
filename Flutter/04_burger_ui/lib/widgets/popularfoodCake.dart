import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/order.dart';

class PopularFoodCake extends StatefulWidget {
  PopularFoodCake(this.img,this.price,{super.key});
  String img;
  int price;
  @override
  State<PopularFoodCake> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFoodCake> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Ink(
          child: InkWell(
            //borderRadius: BorderRadius.circular(20),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Order(widget.img,widget.price)));
            },
            child: Container(
              height: 250,
              width: 362,
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5,
                    ),
                  ]
              ),
            ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Order(widget.img,widget.price)));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            width: 336,
            height: 135,
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Order(widget.img,widget.price)));
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(75+24, 0, 75+24,0),
            width: 170,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(widget.img,fit: BoxFit.fill,),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Order(widget.img,widget.price)));
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(24,155+32,24,0),
            width: 330,
            height: 80,
            decoration: BoxDecoration(
              /// color: Colors.brown,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("Vanilla Cake",
                      style: TextStyle(color: Colors.black, fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text("${widget.price}৳",
                      style: const TextStyle(color: Colors.black, fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Text("Premium Cake",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
