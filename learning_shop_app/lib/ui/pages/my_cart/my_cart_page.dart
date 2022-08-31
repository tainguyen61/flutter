import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/home/home_page.dart';
import 'package:learning_shop_app/ui/pages/my_cart/component/my_cart_list.dart';
import 'package:learning_shop_app/widget/big_text.dart';
import 'package:learning_shop_app/widget/small_text.dart';
import 'package:provider/provider.dart';

import 'data/models/my_cart_item_model.dart';
import 'data/models/product.dart';
import 'data/my_cart_state.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyCartItemModel myData = Provider.of<MyCartItemModel>(context,listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                ));
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: BigText(
          text: 'My cart',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: MyCartList(
        // onMinusMyCartItemClicked: (index){
        //   myCartState.productList.elementAt(index).count--;
        //   setState(() {});
        // },
        // onPlusMyCartItemClicked: (index){
        //   myCartState.productList.elementAt(index).count++;
        //   setState(() {});
        // },
      ),
      bottomNavigationBar: Container(
        height: 120,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: 'Total',
                ),
                BigText(
                  text: '\$'+myData.totalPrice.toString(),
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                myData.clear();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange,
                  ),
                  alignment: Alignment.center,
                  child: BigText(
                    text: 'Buy Now',
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
