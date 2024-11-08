// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eco_app/componenets/bottom_navbar.dart';
import 'package:eco_app/pages/cart_page.dart';
import 'package:eco_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [ShopPage(), CartPage()];

  navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
        passedIndex: _selectedIndex,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu)),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'lib/images/nike.png',
              height: 150,
              color: Colors.white,
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () => {navigateBottomBar(0), Navigator.pop(context)},
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => null,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'About',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => null,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Sign Out',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                '© 2024 Nike, Inc. All Rights Reserved',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
