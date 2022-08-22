import 'package:flutter/material.dart';
import 'package:new_project/widget/big_text.dart';

class RecentProductsItem extends StatelessWidget {
  const RecentProductsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/images_4/user5.jpg'))),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [BigText(text: 'Drawer Table'), BigText(text: 'Rs. 8000',size: 24,color: Colors.blue,)],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
