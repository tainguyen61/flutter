import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/models/my_cart_item_model.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/models/product.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/my_cart_state.dart';
import 'package:learning_shop_app/widget/big_text.dart';
import 'package:learning_shop_app/widget/small_text.dart';
import 'package:provider/provider.dart';

class ProductBottom extends StatelessWidget {
  const ProductBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: 'About',
          ),
          SizedBox(
            height: 20,
          ),
          SmallText(
            text:
            'Có rất nhiều biến thể của Lorem Ipsum mà bạn có thể tìm thấy, nhưng đa số được biến đổi bằng cách thêm các yếu tố hài hước, các từ ngẫu nhiên có khi không có vẻ gì là có ý nghĩa',
            color: Colors.black,
            size: 14,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange,
                    ),
                    margin: EdgeInsets.only(right: 15),
                    height: 50,
                    width: 50,
                  );
                }),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              MyCartItemModel myData = Provider.of<MyCartItemModel>(context,listen: false);
              myData.add(
                Product(
                  image:
                  'assets/images/apple_watch_series_3.png',
                  name: 'Apple Watch Series 1',
                  size: '42mm',
                  quantity: 1,
                  price: 140,
                ),
              );
              final product = Product(image: 'a', name: 'name', size: 'size', quantity: 1, price: 1);
              final String json = jsonEncode(myData.product);
              print(myData.countItem);
              print(json);
            },
            child: SizedBox(
              width: double.infinity,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(child: BigText(text: 'Add to cart',color: Colors.white,))),
            ),
          ),
        ],
      ),
    );
  }
}
