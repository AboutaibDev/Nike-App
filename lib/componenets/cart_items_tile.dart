// ignore_for_file: must_be_immutable

import 'package:eco_app/models/store_items.dart';
import 'package:flutter/material.dart';

class CartItemsTile extends StatelessWidget {
  StoreItems cartItem;
  void Function()? removeCartItem;
  CartItemsTile(
      {super.key, required this.cartItem, required this.removeCartItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: Image.asset(cartItem.image),
          title: Text(cartItem.name),
          subtitle: Text('\$${cartItem.price}'),
          trailing: IconButton(
              onPressed: removeCartItem,
              icon: const Icon(
                Icons.remove,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
