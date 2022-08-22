import 'package:flutter/material.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/featured_products/component/featured_products_item.dart';

class FeaturedProductsList extends StatelessWidget {
  const FeaturedProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context,index){
        return FeaturedProductsItem();
      }),
    );
  }
}
