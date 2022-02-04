import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:real_estate/const.dart';

class CustomBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      iconSize: 22,
      currentIndex: 0,
      elevation: 0,
      selectedItemColor: blackColor,
      selectedLabelStyle: medText.copyWith(fontSize: 12, color: blackColor),
      unselectedItemColor: gray1Color,
      unselectedLabelStyle: regText.copyWith(fontSize: 12, color: gray1Color),
      items: [
        BottomNavigationBarItem(
          icon: Icon(IconlyBold.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.heart),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.profile),
          label: 'Profile',
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
