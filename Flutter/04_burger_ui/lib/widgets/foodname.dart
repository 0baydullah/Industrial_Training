import 'package:burger_ui/singleitem/burger.dart';
import 'package:burger_ui/widgets/popularfood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../singleitem/pizza.dart';

class FoodName extends StatefulWidget {
  FoodName(this.item, this.img,{super.key});
  ///List<Foods>food;
 String item;
 String img;

  @override
  State<FoodName> createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  @override

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          selected =1;
         if(widget.item=="Burger") Burger();
          else Pizza();
        });
      },
      child: Stack(
          children: [
            Ink(
              child: InkWell(
                borderRadius: BorderRadius.circular(20),

                child: Container(
                  height: 185,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: selected==1 ? Colors.brown : Colors.white,

                    borderRadius: BorderRadius.circular(20),
                  ),

                ),
              ),
            ),
            InkWell(

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 22.5+10, vertical: 15),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(widget.img),
              ),
            ),
            InkWell(

              child: Container(
                margin: EdgeInsets.fromLTRB(5+10,92, 5+10, 0),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 90,
                height: 30,
                child: Center(
                  child: Text(widget.item,
                    style: TextStyle(
                      color: selected==1 ? Colors.white : Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            ),


            Container(
             /// margin: EdgeInsets.symmetric(horizontal: 37+10, vertical: 142),
              margin: EdgeInsets.fromLTRB(37+10,142, 37+10, 30),
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: selected==1 ? Colors.white : Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(Icons.arrow_forward_ios_sharp,
                color: selected==1 ? Colors.brown : Colors.white,
                size: 18,),
            ),

           /* Column(
              children: [
                if((selected%3)==1)...[
                  Burger(),
                ]else if((selected%3)==2)...[
                  Pizza(),
                ]
              ],
            ),*/

          ],
        ),
    );
  }
}
