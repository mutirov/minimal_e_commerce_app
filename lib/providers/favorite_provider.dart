import 'package:e_commerce_shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProductModel> _favoriteProducts = [];

  List<ProductModel> get favoriteProducts => _favoriteProducts;

  void toogleFavorite(ProductModel product) {
    if (_favoriteProducts.contains(product)) {
      _favoriteProducts.remove(product);
    } else {
      _favoriteProducts.add(product);
    }
    notifyListeners();
  }

bool isExist(ProductModel product) {
  final isExist = _favoriteProducts.contains(product);
  return isExist;
}

static FavoriteProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<FavoriteProvider>(context, listen: listen);
  }
}
