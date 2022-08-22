import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_shop_app/widget/big_text.dart';
import 'package:learning_shop_app/widget/small_text.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          BigText(text: 'Apple Watch Series 6',fontWeight: FontWeight.bold,),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RatingBarIndicator(
                rating: 5,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 24,
                direction: Axis.horizontal,
              ),
              SizedBox(
                width: 20,
              ),
              SmallText(
                text: '(4500 Review)',
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  BigText(
                    text: '\$140',
                    fontWeight: FontWeight.w900,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SmallText(
                    text: '\$200',
                    size: 14,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              BigText(
                text: 'Avaliable in stack',
                fontWeight: FontWeight.bold,
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
