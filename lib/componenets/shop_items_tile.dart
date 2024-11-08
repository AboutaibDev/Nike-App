// ignore_for_file: must_be_immutable

import 'package:eco_app/models/store_items.dart';
import 'package:flutter/material.dart';

class ItemsTile extends StatelessWidget {
  StoreItems item;
  void Function()? addingItem;
  ItemsTile({super.key, required this.item, required this.addingItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[100]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // pic
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              item.image,
              height: 350,
              width: 380,
              fit: BoxFit.cover,
            ),
          ),

          // name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Text(
              item.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          // disc
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              item.discription,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Text(
                      '\$${item.price}',
                      style: TextStyle(color: Colors.grey[900], fontSize: 18),
                    ),
                  ),
                  // button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[900],
                          padding: const EdgeInsets.all(30),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12)))),
                      onPressed: addingItem,
                      child: Icon(
                        Icons.add,
                        color: Colors.grey[100],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
