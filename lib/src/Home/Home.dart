import 'package:flutter/material.dart';

import '../item/All_item.dart';
import '../item/Fruit.dart';
import '../item/Grain.dart';
import '../item/Vegetable.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _isselected = 0;
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          // backgroundColor: Color.fromARGB(255, 245, 244, 244),
          backgroundColor: Color.fromARGB(255, 245, 244, 244),

          actions: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.scaleDown),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 238, 233, 226),
                    ),
                    height: 50,
                    width: 50,
                  ),
                )
              ],
            )
          ],
          toolbarHeight: 140,

          flexibleSpace: Stack(children: [
            Positioned(
              top: 80,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text('Shanya Hushyar',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))
                ],
              ),
            ),
            Positioned(
              top: 130,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          focusColor: Colors.grey,
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                    ),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 222, 245, 224),
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.tune,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ]),

          bottom: TabBar(
              onTap: (value) => setState(() {
                    tab = value;
                  }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                return Color.fromARGB(255, 245, 244, 244);
              }),
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.green,
              indicatorColor: Color.fromARGB(255, 245, 244, 244),
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Text('All'),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        height: 8,
                        width: 8,
                        decoration: tab == 0
                            ? BoxDecoration(
                                color: tab == 0 ? Colors.green : Colors.grey,
                                borderRadius: BorderRadius.circular(4))
                            : null,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text('Fruit'),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        height: 8,
                        width: 8,
                        decoration: tab == 1
                            ? BoxDecoration(
                                color: tab == 1 ? Colors.green : Colors.grey,
                                borderRadius: BorderRadius.circular(4))
                            : null,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text('Vegetable'),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        height: 8,
                        width: 8,
                        decoration: tab == 2
                            ? BoxDecoration(
                                color: tab == 2 ? Colors.green : Colors.grey,
                                borderRadius: BorderRadius.circular(4))
                            : null,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text('Meat'),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        height: 8,
                        width: 8,
                        decoration: tab == 3
                            ? BoxDecoration(
                                color: tab == 3 ? Colors.green : Colors.grey,
                                borderRadius: BorderRadius.circular(4))
                            : null,
                      ),
                    ],
                  ),
                )
              ]),
        ),
        body: TabBarView(
          children: [
            All(),
            Fruit(),
            Vegetable(),
            Grain(),
          ],
        ),
      ),
    );
  }
}
