import 'package:flutter/material.dart';
import 'package:new_project/BTVN6/ui/pages/home/component/card/card_list.dart';
import 'package:new_project/BTVN6/ui/pages/home/component/categories/categories_list.dart';
import 'package:new_project/widget/big_text.dart';
import 'package:new_project/widget/small_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.ac_unit_sharp,
                  color: Colors.black,
                ));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                BigText(
                  text: 'Hello Rocky',
                  fontWeight: FontWeight.bold,
                  size: 24,
                ),
                SizedBox(
                  height: 5,
                ),
                SmallText(text: 'Let\'s get\'s somethings?')
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CardListPage(),
          SizedBox(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(text: 'Top Categories',fontWeight: FontWeight.bold,),
                BigText(text: 'SEE ALL',size: 14,color: Colors.deepOrange,fontWeight: FontWeight.bold,)
              ],
            ),
          )),
          CategoriesListPage(),
        ],
      ),
    );
  }
}
