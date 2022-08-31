import 'package:flutter/material.dart';
import 'package:learning_shop_app/widget/big_text.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 180,
          width: 350,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange,Colors.orange
                  ]
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      child:
                      // Text('30% OFF DURING COVID 19',style: TextStyle(fontSize: 20),)
                      BigText(
                        text: '30% OFF DURING COVID 19',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: BigText(text: 'Get New',color: Colors.deepOrange,size: 16,),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/apple_watch_series_3.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
