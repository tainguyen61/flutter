import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/home/component/categories/categories_item.dart';

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
