import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPageView extends StatelessWidget {
  const ProductPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _pageController = PageController();
    return Stack(
      children: [
        Container(
          height: 300,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              controller: _pageController,
              itemBuilder: (context,index){
                return Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(360),
                      bottomRight: Radius.circular(360),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/apple_watch_series_3.png',),
                    ),
                  ),
                );
              }),

        ),
        Positioned(
          bottom:20,
          left:0,
          right:0,
          child: Container(
            child: SmoothPageIndicator(
                controller: _pageController,  // PageController
                count:  5,
                effect:  WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.orange
                ),  // your preferred effect
                onDotClicked: (index){

                }
            ),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
