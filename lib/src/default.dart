import 'package:flutter/material.dart';
import 'package:grocery/Login.dart';
import 'package:grocery/src/Cart/cart.dart';
import 'package:grocery/src/Home/Home.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  var _isselected = 0;
  var screen = [Home(), Cart(), Login()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_isselected],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: BottomNavigationBar(
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
                activeIcon: Icon(Icons.shopping_cart_outlined),
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
