import 'package:flutter/material.dart';

class WishlistProduct with ChangeNotifier{
  bool _isWishlistProduct = true;

  bool get isWishlistProduct => _isWishlistProduct;

  void wishlistProduct(){
    if(_isWishlistProduct == true){
      _isWishlistProduct = false;
    } else {
      _isWishlistProduct = true;
    }
    notifyListeners();
  }
}