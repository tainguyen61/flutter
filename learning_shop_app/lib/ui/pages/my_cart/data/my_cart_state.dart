// import 'package:learning_shop_app/ui/pages/my_cart/data/models/my_cart_item_model.dart';
// import 'package:provider/provider.dart';
//
// class MyCartState extends ChangeNotifierProvider {
//   final Set<MyCartItemModel> productList;
//
//   double get totalPrice {
//     var result = 0.0;
//     for (var myCartItem in productList){
//       result+= myCartItem.subTotal;
//     }
//     return result;
//   }
//
//   int get countItem{
//     return productList.length;
//   }
//   MyCartState({required this.productList});
// }
//
// final myCartState = MyCartState(productList: <MyCartItemModel>{});
//
