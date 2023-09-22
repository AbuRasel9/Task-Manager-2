import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {


    return Stack(


      //stack use for background image er opor logo bosanor jonno
      //stack use korle image er moddhe image/lekha newa jai
      children: [
      SvgPicture.asset(
      "image/background.svg",
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    ),
        //background image reuseable widget

        //logo image
        child

      ],
    );

  }
}
