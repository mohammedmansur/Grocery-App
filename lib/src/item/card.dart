import 'package:flutter/material.dart';
import 'package:grocery/src/Cart/cart.dart';
import 'package:grocery/src/fruitPro/profile.dart';

Widget itemCard(
    {required BuildContext context,
    required String name,
    required String category,
    required String deatil,
    required String imgPath,
    required Color backImg,
    required double price}) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FruitPro(
                  backImg: backImg,
                  name: name,
                  category: category,
                  deatil: deatil,
                  imgPath: imgPath,
                  price: price),
            ));
      },
      child: Container(
        color: Color.fromARGB(255, 245, 244, 244),
        child: Container(
          margin: EdgeInsets.all(10),
          height: 190,
          width: 180,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Positioned(
                left: 10,
                right: 10,
                child: Image.asset(
                  imgPath,
                  height: 160,
                  width: 160,
                ),
              ),
              Positioned(
                right: 0,
                top: 180,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      )),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Center(
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 10,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 180,
                left: 10,
                child: Text(
                  category,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Positioned(
                top: 200,
                left: 10,
                child: Text(
                  '\$$price',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ));
}

Widget gridItemCard(
    {required BuildContext context,
    required String name,
    required String category,
    required String deatil,
    required String imgPath,
    required Color backImg,
    required double price}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FruitPro(
                backImg: backImg,
                name: name,
                category: category,
                deatil: deatil,
                imgPath: imgPath,
                price: price),
          ));
    },
    child: Container(
      margin: EdgeInsets.all(10),
      height: 200,
      width: 160,
      child: Stack(children: [
        Column(
          children: [
            Center(
              child: Container(
                height: 157,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        imgPath,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '\$$price',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
        Positioned(
          left: 70,
          bottom: 0,
          child: Container(
            height: 40,
            width: 40,
            child: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.orange),
          ),
        )
      ]),
    ),
  );
}
