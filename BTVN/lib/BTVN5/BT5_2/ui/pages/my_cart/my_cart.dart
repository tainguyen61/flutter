import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/BTVN5/BT5_2/data/model/my_cart_item.dart';
import 'package:new_project/BTVN5/BT5_2/ui/pages/my_cart/my_cart_state.dart';
import 'package:new_project/screen_main.dart';

import 'component/cart_list.dart';
import 'component/checkout_area.dart';

class MyCartPage extends StatelessWidget {
  MyCartPage({Key? key}) : super(key: key);

  final myCartState = MyCartState(productList: Set<MyCartItem>());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenMain()),
            );}, icon: Icon(Icons.arrow_back));
          },
        ),
        title: Text('My Cart'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          CartList(
            productList: myCartState.productList,
          ),
          Positioned(
            child: CheckoutArea(),
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
