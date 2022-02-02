import 'package:flutter/material.dart';
import 'package:real_estate/const.dart';

class CustomBottomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Home')),
      ],
      currentIndex: 0,
      unselectedItemColor: gray1Color,
      selectedItemColor: Colors.black,
    );
  }
}
