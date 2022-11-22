import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Order Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'My Cart',
                style: TextStyle(
                    wordSpacing: -0.5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 14),
              height: 130,
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/grain/corn.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 8,
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
                    left: 170,
                    top: 35,
                    child: Text(
                      'Grain',
                      style: TextStyle(
                        letterSpacing: -0.5,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 65,
                    child: Text(
                      '\$2.04 (+\$0.99 Tax)',
                      style: TextStyle(
                          letterSpacing: -0.5,
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 93,
                    left: 170,
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.remove,
                            size: 14,
                          ),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.5),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.add,
                            size: 14,
                          ),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.5),
                              border: Border.all(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 93,
                    child: Container(
                      child: Icon(
                        Icons.delete,
                        size: 14,
                      ),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),
                          color: Colors.grey[300]),
                    ),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 14),
              height: 130,
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/fruits/strawberry.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 8,
                    child: Text(
                      'Strawberry Fruits',
                      style: TextStyle(
                        letterSpacing: -0.5,
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 35,
                    child: Text(
                      'Fruits',
                      style: TextStyle(
                        letterSpacing: -0.5,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 65,
                    child: Text(
                      '\$4.34 (+\$1.25 Tax)',
                      style: TextStyle(
                          letterSpacing: -0.5,
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 93,
                    left: 170,
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.remove,
                            size: 14,
                          ),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.5),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.add,
                            size: 14,
                          ),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.5),
                              border: Border.all(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 93,
                    child: Container(
                      child: Icon(
                        Icons.delete,
                        size: 14,
                      ),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),
                          color: Colors.grey[300]),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Delivery Location',
                style: TextStyle(
                    wordSpacing: -0.5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ListTile(
            leading: Container(
              height: 38,
              width: 38,
              child: Icon(
                Icons.gps_fixed,
                color: Colors.blue,
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 16,
                )),
            title: Text('Sulaimaniah Mawlawi st..'),
            subtitle: Text('10006, Barbaladiaka'),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Payment Method',
                style: TextStyle(
                    wordSpacing: -0.5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ListTile(
            leading: Container(
              height: 38,
              width: 38,
              child: Image.asset(
                'assets/visa.png',
                height: 30,
                width: 30,
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 16,
                )),
            title: Text('Visa Classic'),
            subtitle: Text('**** 6091'),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Order Info',
                style: TextStyle(
                    wordSpacing: -0.5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text('\$25.99')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Cost',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text('+\$2.00')
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text('+\$27.99',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
