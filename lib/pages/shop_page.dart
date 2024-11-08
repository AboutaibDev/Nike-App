// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:eco_app/models/store.dart';
import 'package:eco_app/models/store_items.dart';
import 'package:eco_app/componenets/shop_items_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  TextEditingController _searchInp = TextEditingController();

  // adding item to cart
  void addingItem(item) {
    Provider.of<Store>(context, listen: false).addToCart(item);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${item.name} added to cart!',
          style: TextStyle(color: Colors.grey[300]),
        ),
        backgroundColor: Colors.grey[900],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) => Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                controller: _searchInp,
                decoration: InputDecoration(
                    hintText: 'Search...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    fillColor: Colors.white,
                    filled: true,
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => null,
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'If you have a body, you are an athlete.',
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Picks 🔥',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: store.items.length,
                itemBuilder: (context, index) {
                  StoreItems item = store.getItems()[index];
                  return ItemsTile(
                      item: item, addingItem: () => addingItem(item));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Divider(),
            )
          ],
        ),
      ),
    );
  }
}
