import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/my_cart_state.dart';
import 'package:learning_shop_app/widget/big_text.dart';
import 'package:provider/provider.dart';

import '../../../data/models/my_cart_item_model.dart';

class MyCartItemPrice extends StatelessWidget {
  final int index;
  const MyCartItemPrice({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyCartItemModel myData = Provider.of<MyCartItemModel>(context,listen: false);
    return BigText(
      text: '\$'+myData.subTotal(index).toString(),
      fontWeight: FontWeight.w900,
    );
  }
}
