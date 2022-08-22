import 'package:flutter/material.dart';
import 'package:new_project/BTVN6/ui/pages/home/component/card/card_item.dart';
import 'package:new_project/widget/big_text.dart';

class CardListPage extends StatelessWidget {
  const CardListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Container(
        margin: EdgeInsets.only(left: 10),
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
