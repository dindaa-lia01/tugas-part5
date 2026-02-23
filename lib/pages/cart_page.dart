import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import 'checkout_page.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];

                return ListTile(
                  title: Text(item.product.name),
                  subtitle: Text(
                    'Qty: ${item.quantity} | \$${item.totalPrice}',
                  ),
                  leading: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      cart.decreaseQuantity(item.product);
                    },
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      cart.increaseQuantity(item.product);
                    },
                  ),
                );
              },
            ),
          ),

          Text(
            'Total: \$${cart.totalPrice}',
            style: const TextStyle(fontSize: 18),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CheckoutPage()),
              );
            },
            child: const Text('Checkout'),
          ),
        ],
      ),
    );
  }
}
