import 'package:learning_shop_app/ui/pages/my_cart/data/models/my_cart_item_model.dart';

class MyCartState{
  final Set<MyCartItemModel> productList;

  double get totalPrice {
    var result = 0.0;
    for (var myCartItem in productList){
      result+= myCartItem.subTotal;
    }
    return result;
  }

  MyCartState({required this.productList});
}

final myCartState = MyCartState(productList: <MyCartItemModel>{});

