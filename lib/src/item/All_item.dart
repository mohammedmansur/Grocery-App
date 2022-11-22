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
              itemCard(
                  context: context,
                  name: 'Bell Pepper',
                  category: 'Vegitables',
                  deatil:
                      'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
                  imgPath: 'assets/veg/bellpepper.png',
                  backImg: Colors.orange[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Broocli',
                  category: 'Vegitables',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/veg/broccli.png',
                  backImg: Colors.green[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Lettuce',
                  category: 'Vegitables',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/veg/lettuce.png',
                  backImg: Colors.yellow[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Tomato',
                  category: 'Vegitables',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/veg/tomato.png',
                  backImg: Colors.red[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Corn',
                  category: 'Grain',
                  deatil:
                      'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
                  imgPath: 'assets/grain/corn.png',
                  backImg: Colors.orange[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Millet',
                  category: 'Grain',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/grain/millet.png',
                  backImg: Colors.green[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Rice',
                  category: 'Grain',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/grain/rice.png',
                  backImg: Colors.yellow[50]!,
                  price: 10.5),
              itemCard(
                  context: context,
                  name: 'Rye',
                  category: 'Grain',
                  deatil: 'hhhhhhhh',
                  imgPath: 'assets/grain/rye.png',
                  backImg: Colors.red[50]!,
                  price: 10.5),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 20, bottom: 15),
          width: double.infinity,
          color: Color.fromARGB(255, 245, 244, 244),
          child: Text(
            'Recent Shop',
            style: TextStyle(
              fontSize: 22,
              letterSpacing: -0.5,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
            color: Color.fromARGB(255, 245, 244, 244),
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 5,
                  child: Image.asset(
                    'assets/veg/tomato.png',
                    height: 80,
                    width: 80,
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 20,
                  child: Text(
                    'Tomato Vegetables',
                    style: TextStyle(
                      letterSpacing: -0.5,
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 50,
                  child: Text(
                    'Vegitable',
                    style: TextStyle(
                      letterSpacing: -0.5,
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 40,
                  child: Text(
                    '\$15.99',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
        Container(
            color: Color.fromARGB(255, 245, 244, 244),
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 5,
                  child: Image.asset(
                    'assets/fruits/orange.png',
                    height: 80,
                    width: 80,
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 20,
                  child: Text(
                    'Orange Fruits',
                    style: TextStyle(
                      letterSpacing: -0.5,
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 50,
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                      letterSpacing: -0.5,
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 40,
                  child: Text(
                    '\$15.99',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
        Container(
            color: Color.fromARGB(255, 245, 244, 244),
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 5,
                  child: Image.asset(
                    'assets/grain/corn.png',
                    height: 80,
                    width: 80,
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 20,
                  child: Text(
                    'Corn Grain',
                    style: TextStyle(
                      letterSpacing: -0.5,
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 50,
                  child: Text(
                    'Grain',
                    style: TextStyle(
                      letterSpacing: -0.5,
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 40,
                  child: Text(
                    '\$15.99',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
