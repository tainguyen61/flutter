import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/my_cart/component/my_cart_item/component/my_cart_item_counter.dart';
import 'package:learning_shop_app/ui/pages/my_cart/component/my_cart_item/component/my_cart_item_price.dart';
import 'package:learning_shop_app/ui/pages/my_cart/component/my_cart_item/component/my_cart_item_title.dart';
import 'package:learning_shop_app/widget/big_text.dart';
import 'package:learning_shop_app/widget/small_text.dart';

class MyCartItem extends StatelessWidget {
  final String itemImg;
  final String itemName;
  final String itemSize;
  final double itemPrice;
  final int itemCount;
  final int index;
  // final VoidCallback onPlusPressed;
  // final VoidCallback onMinusPressed;

  const MyCartItem({Key? key,
    required this.itemImg,
    required this.itemName,
    required this.itemSize,
    required this.itemPrice,
    required this.itemCount,
    required this.index,
    // required this.onPlusPressed, required this.onMinusPressed,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double subTotal = itemPrice * itemCount;
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage(
                      itemImg,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyCartItemTitled(name: itemName,),
                      SizedBox(height: 8,),
                      SmallText(
                        text: itemSize,
                        size: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyCartItemPrice(index: index),
                          Container(
                            height: 35,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: MyCartItemCounter(
                              itemCount: itemCount,
                              // onMinusPressed: onMinusPressed,
                              // onPlusPressed: onPlusPressed,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
