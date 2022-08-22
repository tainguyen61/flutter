import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/home/component/product/product_item.dart';
import 'package:learning_shop_app/widget/big_text.dart';
import 'package:learning_shop_app/widget/small_text.dart';

class ProductListPage extends StatelessWidget {
  final Function onProductClicked;
  const ProductListPage({Key? key, required this.onProductClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Container(
        padding: EdgeInsets.all(5),
        margin: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductItem(
              onProductClicked: (){onProductClicked(index);},
            );
          },
        ),
      ),
    );
  }
}


