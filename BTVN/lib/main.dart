import 'package:flutter/material.dart';
import 'package:new_project/BTVN3/caculator_page.dart';
import 'package:new_project/BTVN4/screenshot.dart';
import 'package:new_project/BTVN4/whatsapp_clone.dart';
import 'package:new_project/BTVN5/BT5_1/ui/pages/buy_stuff/component/buy_stuff.dart';
import 'package:new_project/BTVN6/ui/pages/home/home_page.dart';
import 'package:new_project/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: ScreenMain(),
    );
  }
}

