import 'package:flutter/material.dart';
import 'package:learning_shop_app/widget/big_text.dart';

class MyCartItemTitled extends StatelessWidget {
  final String name;
  const MyCartItemTitled({Key? key,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BigText(
      text: name,
      fontWeight: FontWeight.bold,
    );
  }
}
