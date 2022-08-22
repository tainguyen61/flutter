import 'package:flutter/cupertino.dart';
import 'package:new_project/BTVN5/BT5_2/data/model/my_cart_item.dart';

import 'cart_item.dart';

class CartList extends StatelessWidget {
  CartList({
    Key? key,
    required this.productList,
  }) : super(key: key);

  final Set<MyCartItem> productList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CartItem();
        });
  }
}
