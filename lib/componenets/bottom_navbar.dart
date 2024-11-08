// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  final int passedIndex;

  BottomNavbar({super.key, required this.onTabChange,required this.passedIndex});

  @override
  Widget build(BuildContext context) {
    return GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        tabBackgroundColor: Colors.white,
        tabBorderRadius: 30,
        onTabChange: (value) => onTabChange!(value),
        selectedIndex: passedIndex,
        tabs: [
          GButton(
            iconActiveColor: Colors.grey[900],
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            iconActiveColor: Colors.grey[900],
            icon: Icons.shopping_cart,
            text: 'Cart',
          )
        ]);
  }
}
