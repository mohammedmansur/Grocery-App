import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery/All_item.dart';
import 'package:grocery/Fruit.dart';
import 'package:grocery/Meat.dart';
import 'package:grocery/Vegetable.dart';
import 'package:grocery/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _isselected = 0;

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
          toolbarHeight: 180,

          flexibleSpace: Stack(children: [
            Positioned(
              top: 40,
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
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.green, Color.fromARGB(255, 233, 223, 210)]),
                borderRadius: BorderRadius.circular(50),
              ),
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Fruite',
                ),
                Tab(
                  text: 'Vegetable',
                ),
                Tab(
                  text: 'Meat',
                )
              ]),
        ),
        body: TabBarView(
          children: [
            All(),
            Fruit(),
            Vegetable(),
            Meat(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _isselected,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          onTap: (index) {
            setState(() {
              _isselected = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.shopping_cart_outlined),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: ''),
          ],
        ),
      ),
    );
  }
}
