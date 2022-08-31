import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product.dart';

class MyCartItemModel extends ChangeNotifier{
  List<Product> _product = [];

  void add(Product product){
    _product.add(product);
    notifyListeners();
  }

  int get countItem{
    return _product.length;
  }

  double get totalPrice {
    var result = 0.0;
    for (var myCartItem in _product){
      result+= myCartItem.price*myCartItem.quantity;
    }
    return result;
  }


  List<Product> get getItem{
    return _product;
  }

  double subTotal(int id){
    return _product[id].quantity*_product[id].price;
  }

  void clear(){
    _product.clear();
  }


}