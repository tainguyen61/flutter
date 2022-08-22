import 'product.dart';

class MyCartItemModel{
  final Product product;
  int count;

  double get subTotal => product.price*count;

  MyCartItemModel({required this.product, this.count = 1});
}