import 'package:flutter/material.dart';

class FeaturedProductsItem extends StatelessWidget {
  const FeaturedProductsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 180,
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/images_4/user3.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                width: 180,
                color: Colors.black.withOpacity(0.9),
                child: Text(
                  'Sofa Set',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
