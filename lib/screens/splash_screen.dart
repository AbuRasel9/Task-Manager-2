import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/screens/login_screen.dart';
import 'package:untitled1/screens/main_bottom_nav_bar.dart';
import 'package:untitled1/wdgets/background_image.dart';
import 'package:untitled1/utils/user_data.dart';

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

  goToLoginScreen() async {
    final shareprefs=await SharedPreferences.getInstance();
    final String? result=shareprefs.getString("token");
    if(result !=null) {
      //data store user data token,email,firstName,lastName
      userData.token=result;
      userData.firstName=shareprefs.getString("firstName");
      userData.lastName=shareprefs.getString("lastName");
      userData.email=shareprefs.getString("email");

      //first shwo splash screen wait 3 second then go to login page
      Future.delayed(const Duration(seconds: 1)).then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (contex) => const MainBottomNavBar()),
                (route) => false);
      });
    }
    else {
      //first shwo splash screen wait 3 second then go to login page
      Future.delayed(const Duration(seconds: 3)).then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (contex) => const LoginScreen()),
                (route) => false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundImage(child: Center(child: SvgPicture.asset("image/logo.svg"))));
  }
}
