import 'package:eco_app/models/store_items.dart';
import 'package:flutter/material.dart';

class Store extends ChangeNotifier {
  // list of items to sale
  List<StoreItems> items = [
    StoreItems(
        type: 'shoe',
        name: 'Space Jordans 7000',
        discription: 'you can literally fly with these shoes!',
        image: 'lib/images/1.png',
        price: 625.99),
    StoreItems(
        type: 'shoe',
        name: 'Air Jordans 2026',
        discription: 'You wear these shoes you simply win the world cup.',
        image: 'lib/images/2.png',
        price: 400.99),
    StoreItems(
        type: 'shoe',
        name: 'Gator Jordans 420',
        discription:
            'Aligator skin , You become an aligator by wearing these shoes',
        image: 'lib/images/3.png',
        price: 350.99),
    StoreItems(
        type: 'shoe',
        name: 'Black Jordans 666',
        discription:
            'Brother to brother , you become my brother by wearing these shoes gang!',
        image: 'lib/images/4.png',
        price: 970.99),
    StoreItems(
        type: 'shoe',
        name: 'Rich Old Jordans 1954',
        discription: 'You become A billionaire Old fella with these shoes.',
        image: 'lib/images/5.png',
        price: 3000),
  ];
  // list of user cart
  List userCart = [];

  // get items for sale
  getItems() {
    return items;
  }

  // get user cart
  getUserCart() {
    return userCart;
  }

  // add to user cart
  void addToCart(item) {
    userCart.add(item);
    notifyListeners();
  }

  // remove from user cart
  void removeFromCart(item) {
    userCart.remove(item);
    notifyListeners();
  }
}
