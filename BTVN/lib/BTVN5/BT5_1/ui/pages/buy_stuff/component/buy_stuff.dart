import 'package:flutter/material.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/categories/categories.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/featured_products/featured_products.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/recent_products/component/recent_products_list.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/recent_products/recent_products.dart';
import 'package:new_project/screen_main.dart';
import 'package:new_project/widget/big_text.dart';

class BuyStuffPage extends StatelessWidget {
  const BuyStuffPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: BigText(
          text: 'Buy Stuff',
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenMain()),
                  );
                },
                icon: Icon(Icons.arrow_back));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesPage(),
            FeaturedProductsPage(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: 'Recent Products',
                        fontWeight: FontWeight.bold,
                      ),
                      Text('View all'),
                    ],
                  ),
                ],
              ),
            ),
            RecentProductsPage()
          ],
        ),
      ),
    );
  }
}
