import 'package:burger_ui/widgets/popularfoodPizza.dart';
import 'package:flutter/material.dart';

import '../widgets/popularfood.dart';

class Pizza extends StatefulWidget {
  Pizza({super.key});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularFoodPizza('assets/pizza3.jpg', 650),
          PopularFoodPizza('assets/pizza2.jpg', 700),
          PopularFoodPizza('assets/pizza1.jpg', 600),
          PopularFoodPizza('assets/pizza4.jpg', 550),
        ],
      )
    );
  }
}
