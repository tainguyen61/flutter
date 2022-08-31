import 'package:flutter/material.dart';
import 'package:learning_shop_app/ui/pages/my_cart/data/models/my_cart_item_model.dart';
import 'package:learning_shop_app/ui/pages/my_cart/my_cart_page.dart';
import 'package:learning_shop_app/ui/pages/product/product_page.dart';
import 'package:provider/provider.dart';

import 'ui/pages/home/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var myData = MyCartItemModel();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyCartItemModel>(create: (BuildContext context){
          return myData;
        }),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: "home_page",
        routes: {
          "home_page": (context) {
            return const HomePage();
          },
          "cart_page": (context) {
            return MyCartPage();
          },
          "product": (context) {
            return const ProductPage();
          },
        },
      ),
    );
  }
}
