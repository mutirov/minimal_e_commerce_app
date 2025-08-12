import 'package:e_commerce_shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardProvider extends ChangeNotifier {
  List<ProductModel> _cartItems = [];

  List<ProductModel> get cartItems => _cartItems;

  void toggleProduct(ProductModel product) {
    final index = _cartItems.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      _cartItems[index].stockQuantity++;
    } else {
      _cartItems.add(product);
    }
    notifyListeners();
  }

  totalPrice() {
    double total = 0.0;
    for (ProductModel product in _cartItems) {
      total += product.price * product.stockQuantity;
    }
    return total;
  }

  incrementQuantity(int index) => _cartItems[index].stockQuantity++;
  decrementQuantity(int index) => _cartItems[index].stockQuantity--;

  static CardProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CardProvider>(context, listen: listen);
  }
}
