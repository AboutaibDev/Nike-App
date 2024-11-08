import 'package:eco_app/componenets/cart_items_tile.dart';
import 'package:eco_app/models/store.dart';
import 'package:eco_app/models/store_items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  removeCartItem(item) {
    Provider.of<Store>(context, listen: false).removeFromCart(item);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${item.name} removed from cart!',
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
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Cart',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'purchase',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: store.userCart.length,
                  itemBuilder: (context, index) {
                    StoreItems item = store.getUserCart()[index];
                    return CartItemsTile(
                        cartItem: item,
                        removeCartItem: () => removeCartItem(item));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
