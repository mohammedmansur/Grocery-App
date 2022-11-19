import 'package:flutter/material.dart';

class FruitPro extends StatefulWidget {
  const FruitPro({super.key});

  @override
  State<FruitPro> createState() => _FruitProState();
}

class _FruitProState extends State<FruitPro> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.6,
            width: width,
            child: Stack(
              children: [
                Container(
                  height: height * 0.48,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(100),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 50,
                    width: width - 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.orange[400],
                            ),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.orange[400],
                            ),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Image.asset(
                      'assets/orange.png',
                      height: 350,
                      width: 350,
                    ))
              ],
            ),
          ),
          Container(
            height: height * 0.24,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Text(
                    'Orange Fruit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.orange[600],
                            )),
                      ),
                      SizedBox(
                        height: 40,
                        width: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.orange[600],
                            )),
                      ),
                      SizedBox(
                        height: 40,
                        width: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.orange[600],
                            )),
                      ),
                      SizedBox(
                        height: 40,
                        width: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.orange[600],
                            )),
                      ),
                      SizedBox(
                        height: 40,
                        width: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.grey,
                            )),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('(4.4)'),
                      Container(
                        height: 50,
                        width: width * 0.45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: Container(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.green,
                                ),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: Container(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    'Descryption',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34, right: 20),
                  child: Text(
                    'An orange is a fruit of various citrus species in the family Rutaceae ); it primarily refers to Citrus × sinensis, which is also called sweet orange.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: height * 0.05),
              height: height * 0.16,
              width: width,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 34,
                    child: Text(
                      'Price',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    top: 32,
                    left: 34,
                    child: Text(
                      '\$13.99',
                      style: TextStyle(
                          letterSpacing: -3,
                          color: Colors.indigo[900],
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
