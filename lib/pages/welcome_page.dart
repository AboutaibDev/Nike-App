// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Image.asset(
              'lib/images/nike.png',
              height: 260,
            ),

            const SizedBox(
              height: 130,
            ),
            // text 1
            Text(
              'Just Do It',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            // text 2
            Text(
              'Nike Shop! The Only Clothes Shop You Will Ever Need',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            // button
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/Home'),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[200]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
