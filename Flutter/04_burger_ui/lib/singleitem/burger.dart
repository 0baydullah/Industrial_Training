import 'package:burger_ui/widgets/popularfood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PopularFood('assets/bgr00.png', 200.toInt()),
            PopularFood('assets/bgr1.jpg', 400.toInt()),
            PopularFood('assets/bgr4.jpg', 320.toInt()),
            PopularFood('assets/bgr5.jpg', 450.toInt()),
            PopularFood('assets/bgr2.jpg', 350.toInt()),
            PopularFood('assets/bgr3.jpg', 380.toInt()),
          ],
        )
    );
  }
}
