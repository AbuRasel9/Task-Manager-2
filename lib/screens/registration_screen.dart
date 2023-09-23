import 'package:flutter/material.dart';
import 'package:untitled1/screens/login_screen.dart';
import 'package:untitled1/wdgets/background_image.dart';
import 'package:untitled1/wdgets/bottom_text.dart';
import 'package:untitled1/wdgets/reuseable_elevated_button.dart';
import 'package:untitled1/wdgets/text_feild_style.dart';
import 'package:untitled1/wdgets/text_style.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Join With Us",
                    style: titleTextStyle,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: textFeildStyle("Email:"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: textFeildStyle("First Name:"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: textFeildStyle("Last Name:"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: textFeildStyle("Mobile:"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: textFeildStyle("Password:"),
                  ),
                  const SizedBox(height: 15,),
                  ReuseableElevatedButton(onTap: () {}),
                  const SizedBox(height: 20,),
                  BottomText(onTap: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (contex) => LoginScreen()), (
                            route) => false);
                  }, buttonText: "Sign in", firstText: "Have account?")

                ],
              ),
            ),
          )),
    );
  }
}
