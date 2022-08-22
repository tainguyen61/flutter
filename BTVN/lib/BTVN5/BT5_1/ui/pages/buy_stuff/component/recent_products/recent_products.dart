import 'package:flutter/material.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/recent_products/component/recent_products_item.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/recent_products/component/recent_products_list.dart';
import 'package:new_project/widget/big_text.dart';

class RecentProductsPage extends StatelessWidget {
  const RecentProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RecentProductsList();
  }
}

