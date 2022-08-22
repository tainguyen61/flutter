import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/my_cart_state.dart';
import 'package:learning_shop_app/widget/big_text.dart';

class MyCartItemPrice extends StatelessWidget {
  final double subTotal;
  const MyCartItemPrice({Key? key, required this.subTotal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BigText(
      text: '\$'+subTotal.toString(),
      fontWeight: FontWeight.w900,
    );
  }
}
