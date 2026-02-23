import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Total Order: \$${cart.totalPrice}'),

            TextField(decoration: const InputDecoration(labelText: 'Name')),

            TextField(decoration: const InputDecoration(labelText: 'Address')),

            ElevatedButton(
              onPressed: () {
                cart.clearCart();
                Navigator.pop(context);
              },
              child: const Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
