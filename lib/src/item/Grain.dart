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
              name: 'Corn',
              category: 'Grain',
              deatil:
                  'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
              imgPath: 'assets/grain/corn.png',
              backImg: Colors.orange[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Millet',
              category: 'Grain',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/grain/millet.png',
              backImg: Colors.green[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Rice',
              category: 'Grain',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/grain/rice.png',
              backImg: Colors.yellow[50]!,
              price: 10.5),
          gridItemCard(
              context: context,
              name: 'Rye',
              category: 'Grain',
              deatil: 'hhhhhhhh',
              imgPath: 'assets/grain/rye.png',
              backImg: Colors.red[50]!,
              price: 10.5),
        ],
      ),
    );
  }
}
