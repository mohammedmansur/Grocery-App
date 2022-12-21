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
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          onTap: (index) {
            setState(() {
              _isselected = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.shopping_cart),
                icon: Icon(Icons.shopping_cart_outlined),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person_rounded),
                icon: Icon(Icons.person_outline_rounded),
                label: ''),
          ],
        ),
      ),
    );
  }
}
