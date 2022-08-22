import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/my_cart/component/my_cart_item/my_cart_item.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/my_cart_state.dart';

class MyCartList extends StatelessWidget {
  final Function(int) onPlusMyCartItemClicked;
  final Function(int) onMinusMyCartItemClicked;
  const MyCartList({Key? key,
    required this.onPlusMyCartItemClicked,
    required this.onMinusMyCartItemClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: myCartState.productList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final myCartItem = myCartState.productList.elementAt(index);
          return MyCartItem(
            itemImg: myCartItem.product.image,
            itemName: myCartItem.product.name,
            itemSize: myCartItem.product.size,
            itemPrice: myCartItem.product.price,
            itemCount: myCartItem.count,
            onPlusPressed: (){
              onPlusMyCartItemClicked(index);
            },
            onMinusPressed: (){
              onMinusMyCartItemClicked(index);
            },
          );
        });
  }
}
