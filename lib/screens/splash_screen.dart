import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
