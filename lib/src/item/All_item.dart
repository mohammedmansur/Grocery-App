import 'package:flutter/material.dart';

import 'card.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              itemCard(
                  context: context,
                  name: 'Orange',
                  category: 'Fruits',
                  deatil:
                      'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
                  imgPath: 'assets/fruits/orange.png',
                  backImg: Colors.orange[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Apple',
                  category: 'Fruits',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/fruits/apple.png',
                  backImg: Colors.green[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'PinApple',
                  category: 'Fruits',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/fruits/pinapple.png',
                  backImg: Colors.yellow[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Strawberry',
                  category: 'Fruits',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/fruits/strawberry.png',
                  backImg: Colors.red[50]!,
                  price: 10.5),
            ],
          ),
        ),
        Container(
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              itemCard(
                  context: context,
                  name: 'Orange',
                  category: 'Fruits',
                  deatil:
                      'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
                  imgPath: 'assets/fruits/orange.png',
                  backImg: Colors.orange[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Apple',
                  category: 'Fruits',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/fruits/apple.png',
                  backImg: Colors.green[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'PinApple',
                  category: 'Fruits',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/fruits/pinapple.png',
                  backImg: Colors.yellow[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Strawberry',
                  category: 'Fruits',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/fruits/strawberry.png',
                  backImg: Colors.red[50]!,
                  price: 10.5),
            ],
          ),
        ),
      ],
    );
  }
}
// ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: 5,
//       itemBuilder: (context, index) {
//         return ProductCard(
//           Pname: 'Orange',
//           category: 'Fruit',
//           price: '2.00',
//         );
//       },
//     );