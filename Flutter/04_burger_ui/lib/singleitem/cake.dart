import 'package:burger_ui/widgets/popularfoodCake.dart';
import 'package:flutter/material.dart';

import '../widgets/popularfood.dart';

class Cake extends StatefulWidget {
  Cake({super.key});

  @override
  State<Cake> createState() => _CakeState();
}

class _CakeState extends State<Cake> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PopularFoodCake('assets/cake2.jpg', 800),
            PopularFoodCake('assets/cake4.jpg',1100),
            PopularFoodCake('assets/cake5.jpg', 1200),
            // PopularFood('assets/bgr1.jpg'),
          ],
        )
    );
  }
}
