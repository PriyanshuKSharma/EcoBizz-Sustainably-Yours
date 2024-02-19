import 'package:flutter/material.dart';
import 'package:EcoBizz/product.dart';

class CartPage extends StatelessWidget {
  final List<Product> cartItems;

  const CartPage({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Row(
                children: [
                  Image.asset(
                    cartItems[index].image,
                    width: 50, // Set width as per requirement
                    height: 50, // Set height as per requirement
                  ),
                  const SizedBox(width: 10),
                  Text(cartItems[index].title),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
