import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:untitled1/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //first buld method call then goToLoginScreen function call and Execute
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      goToLoginScreen();
    });
  }

  goToLoginScreen() {
    //first shwo splash screen wait 3 second then go to login page
    Future.delayed(Duration(seconds: 3))
        .then((value){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (contex)=>LoginScreen()), (route) => false);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      //stack use for background image er opor logo bosanor jonno
      //stack use korle image er moddhe image/lekha newa jai
      children: [
        //background image
        SvgPicture.asset(
          "image/background.svg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        //logo image
        Center(child: SvgPicture.asset("image/logo.svg"))
      ],
    ));
  }
}
