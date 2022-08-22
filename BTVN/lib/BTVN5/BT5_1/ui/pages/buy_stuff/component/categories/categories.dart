import 'package:flutter/material.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/categories/component/categories_list.dart';
import 'package:new_project/widget/big_text.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: BigText(
              text: 'Categories',
              fontWeight: FontWeight.bold,
            ),
          ),
          CategoriesList(),
        ],
      ),
    );
  }
}
