import 'package:eco_app/models/store.dart';
import 'package:eco_app/pages/home_page.dart';
import 'package:eco_app/pages/shop_page.dart';
import 'package:eco_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Store(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
        routes: {
          '/Home': (context) => const HomePage(),
          '/Shop': (context) => const ShopPage(),
        },
      ),
    );
  }
}
