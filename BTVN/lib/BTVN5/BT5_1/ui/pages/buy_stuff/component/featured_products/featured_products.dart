import 'package:flutter/material.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/featured_products/component/featured_product_list.dart';
import 'package:new_project/widget/big_text.dart';

class FeaturedProductsPage extends StatelessWidget {
  const FeaturedProductsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: BigText(text: 'Featured Products',fontWeight: FontWeight.bold,),
          ),
          SizedBox(height: 30,),
          FeaturedProductsList(),
        ],
      ),
    );
  }
}
