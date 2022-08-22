import 'package:flutter/material.dart';
import 'package:new_project/BTVN4/screenshot.dart';
import 'package:new_project/BTVN4/whatsapp_clone.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/buy_stuff.dart';
import 'package:new_project/BTVN5/BT5_2/ui/pages/my_cart/my_cart.dart';
import 'package:new_project/widget/small_text.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BTVN'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: InkWell(
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenShot()),
            );},
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue),
              child: Center(
                  child: SmallText(
                    text: 'Screenshot',
                    color: Colors.white,
                    size: 16,
                  )),
            ),
          ),
        ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: InkWell(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WhatsAppClonePage()),
              );},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                    child: SmallText(
                      text: 'WhatsApp Clone',
                      color: Colors.white,
                      size: 16,
                    )),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: InkWell(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuyStuffPage()),
              );},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                    child: SmallText(
                      text: 'Buy Stuff',
                      color: Colors.white,
                      size: 16,
                    )),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: InkWell(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCartPage()),
              );},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                    child: SmallText(
                      text: 'My Cart',
                      color: Colors.white,
                      size: 16,
                    )),
              ),
            ),
          ),
      ],),
    );
  }
}
