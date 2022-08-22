import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/home/component/card/card_item.dart';

class CardListPage extends StatelessWidget {
  const CardListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, indext) {
              return CardItem();
            }),
      ),
    );
  }
}
