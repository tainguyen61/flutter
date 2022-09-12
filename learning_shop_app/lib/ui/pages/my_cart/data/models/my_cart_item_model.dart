import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product.dart';

class MyCartItemModel extends ChangeNotifier{
  List<Product> product = [];


  void add(Product _product){
    product.add(_product);
    notifyListeners();
  }

  int get countItem{
    return product.length;
  }

  double get totalPrice {
    var result = 0.0;
    for (var myCartItem in product){
      result+= myCartItem.price*myCartItem.quantity;
    }
    return result;
  }


  List<Product> get getItem{
    return product;
  }

  double subTotal(int id){
    return product[id].quantity*product[id].price;
  }

  void clear(){
    product.clear();
  }


}