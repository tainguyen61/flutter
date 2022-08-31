import 'package:flutter/material.dart';
import 'package:learning_shop_app/widget/big_text.dart';

class MyCartItemCounter extends StatelessWidget {
  // final VoidCallback onPlusPressed;
  // final VoidCallback onMinusPressed;
  final int itemCount;
  const MyCartItemCounter({Key? key,
    // required this.onPlusPressed, required this.onMinusPressed,
    required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: (){},
            // onMinusPressed,
            child: Icon(Icons.remove,size: 20,color: Colors.orange,)),
        SizedBox(width: 10,),
        BigText(
          text: itemCount.toString(),
          size: 14,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(width: 10,),
        InkWell(
            onTap: (){},
            // onPlusPressed,
            child: Icon(Icons.add,size: 20,color: Colors.orange,)),
      ],
    );
  }
}
