import 'package:flutter/material.dart';

import 'card.dart';

class Grain extends StatefulWidget {
  const Grain({super.key});

  @override
  State<Grain> createState() => _GrainState();
}

class _GrainState extends State<Grain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 245, 244, 244),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          gridItemCard(
              context: context,
              name: 'Orange',
              category: 'Fruits',
              deatil:
                  'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
              imgPath: 'assets/fruits/orange.png',
              backImg: Colors.orange[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Apple',
              category: 'Fruits',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/fruits/apple.png',
              backImg: Colors.green[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'PinApple',
              category: 'Fruits',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/fruits/pinapple.png',
              backImg: Colors.yellow[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Strawberry',
              category: 'Fruits',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/fruits/strawberry.png',
              backImg: Colors.red[50]!,
              price: 10.5),
        ],
      ),
    );
  }
}
