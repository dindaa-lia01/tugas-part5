import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'product.dart';

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  // ✅ Add to cart
  void addToCart(Product product) {
    final index = _items.indexWhere((item) => item.product.id == product.id);

    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(product: product));
    }

    notifyListeners();
  }

  // ✅ Increase quantity
  void increaseQuantity(Product product) {
    final index = _items.indexWhere((item) => item.product.id == product.id);

    if (index >= 0) {
      _items[index].quantity++;
      notifyListeners();
    }
  }

  // ✅ Decrease quantity
  void decreaseQuantity(Product product) {
    final index = _items.indexWhere((item) => item.product.id == product.id);

    if (index >= 0) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  // ✅ Remove item
  void removeItem(Product product) {
    _items.removeWhere((item) => item.product.id == product.id);
    notifyListeners();
  }

  // ✅ Total price
  double get totalPrice {
    return _items.fold(0, (sum, item) => sum + item.totalPrice);
  }

  int get itemCount {
    return _items.fold(0, (total, item) => total + item.quantity);
  }

  // Clear cart
  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
