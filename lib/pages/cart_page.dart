import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import 'checkout_page.dart';

class CartPage extends StatelessWidget {
  // ✅ Formatter Rupiah tanpa package
  String formatRupiah(num number) {
    return 'Rp ' +
        number
            .toStringAsFixed(0)
            .replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => '.');
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Keranjang')),
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
                    'Qty: ${item.quantity} | ${formatRupiah(item.totalPrice)}',
                  ),

                  leading: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      cart.decreaseQuantity(item.product);
                    },
                  ),

                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          cart.increaseQuantity(item.product);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          cart.removeItem(item.product);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // ✅ Total pakai rupiah juga
          Text(
            'Total: ${formatRupiah(cart.totalPrice)}',
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
