import 'package:flutter/material.dart';

import 'card.dart';

class Vegetable extends StatelessWidget {
  const Vegetable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 245, 244, 244),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          gridItemCard(
              context: context,
              name: 'Bell Pepper',
              category: 'Vegitables',
              deatil:
                  'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
              imgPath: 'assets/veg/bellpepper.png',
              backImg: Colors.orange[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Broocli',
              category: 'Vegitables',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/veg/broccli.png',
              backImg: Colors.green[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Lettuce',
              category: 'Vegitables',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/veg/lettuce.png',
              backImg: Colors.yellow[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Tomato',
              category: 'Vegitables',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/veg/tomato.png',
              backImg: Colors.red[50]!,
              price: 10.5),
        ],
      ),
    );
  }
}
