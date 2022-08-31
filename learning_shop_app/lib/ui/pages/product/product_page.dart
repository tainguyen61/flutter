import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/home/home_page.dart';
import 'package:learning_shop_app/ui/pages/product/component/product_body.dart';
import 'package:learning_shop_app/ui/pages/product/component/product_bottom.dart';
import 'package:learning_shop_app/ui/pages/product/component/product_page_view.dart';
import 'package:provider/provider.dart';

import '../my_cart/data/models/my_cart_item_model.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) {
                        return HomePage();
                      },
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductPageView(),
            ProductBody(),
            ProductBottom(),
          ],
        ),
      ),
    );
  }
}
