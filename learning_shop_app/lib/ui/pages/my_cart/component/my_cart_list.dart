import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/my_cart/component/my_cart_item/my_cart_item.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/my_cart_state.dart';
import 'package:provider/provider.dart';

import '../data/models/my_cart_item_model.dart';

class MyCartList extends StatelessWidget {
  // final Function(int) onPlusMyCartItemClicked;
  // final Function(int) onMinusMyCartItemClicked;
  const MyCartList({Key? key,
    // required this.onPlusMyCartItemClicked,
    // required this.onMinusMyCartItemClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyCartItemModel myData = Provider.of<MyCartItemModel>(context,listen: false);
    return ListView.builder(
        itemCount: myData.countItem,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final myCartItem = myData.getItem.elementAt(index);
          return MyCartItem(
            itemImg: myCartItem.image,
            itemName: myCartItem.name,
            itemSize: myCartItem.size,
            itemPrice: myCartItem.price,
            itemCount: myCartItem.quantity,
            index: index,
            // onPlusPressed: (){
            //   onPlusMyCartItemClicked(index);
            // },
            // onMinusPressed: (){
            //   onMinusMyCartItemClicked(index);
            // },
          );
        });
  }
}
