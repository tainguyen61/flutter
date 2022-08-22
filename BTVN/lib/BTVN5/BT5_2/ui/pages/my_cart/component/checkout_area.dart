import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutArea extends StatelessWidget {
  const CheckoutArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade400,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Checkout Price',style: TextStyle(fontSize: 16,color: Colors.black),),
                  //
                  Text('Rs. 5000',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: SizedBox(width: double.infinity,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                    color: Colors.red,
                    child: Text('Checkout',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
