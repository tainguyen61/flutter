import 'package:flutter/material.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/categories/component/categories_item.dart';

class CategoriesListPage extends StatelessWidget {
  const CategoriesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 70,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context,index){
              return CategoriesItem();
            }),
      ),
    );
  }
}
