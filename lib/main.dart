import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //create navigatorKey is globlae anywhre we can access
  static GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      //now anywhre we can use context
      navigatorKey: MyApp.navigatorKey,
      home: SplashScreen(),
    );
  }
}
