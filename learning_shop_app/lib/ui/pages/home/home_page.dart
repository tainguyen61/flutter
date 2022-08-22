import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/home/component/card/card_list.dart';
import 'package:learning_shop_app/ui/pages/home/component/categories/categories_list.dart';
import 'package:learning_shop_app/ui/pages/home/component/product/product_list.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/my_cart_state.dart';
import 'package:learning_shop_app/widget/big_text.dart';
import 'package:learning_shop_app/widget/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

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
          myCartState.productList.length > 0 ?
          Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepOrange),
                  child: SmallText(
                    text: myCartState.productList.length.toString(),
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  await Navigator.of(context).pushNamed("cart_page");
                  setState(() {

                  });
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ],
          ):IconButton(
            onPressed: () async {
              await Navigator.of(context).pushNamed("cart_page");
              setState(() {

              });
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
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
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: 'Top Categories',
                        fontWeight: FontWeight.bold,
                      ),
                      BigText(
                        text: 'SEE ALL',
                        size: 14,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                )),
            CategoriesListPage(),
            SizedBox(
              height: 30,
            ),
            ProductListPage(onProductClicked: (index) async{
              await Navigator.of(context).pushNamed("product");
              setState(() {

              });
            },),
          ],
        ),
      ),
    );
  }
}

