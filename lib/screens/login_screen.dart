import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:untitled1/screens/forget_password_screen.dart';
import 'package:untitled1/wdgets/background_image.dart';
import 'package:untitled1/wdgets/bottom_text.dart';
import 'package:untitled1/wdgets/reuseable_elevated_button.dart';
import 'package:untitled1/wdgets/text_feild_style.dart';
import 'package:untitled1/wdgets/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //background image use in reuseable widget
        BackgroundImage(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SafeArea(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Text
                    Text(
                      "Get Started With",
                      style: titleTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      //text form feild style use reuseable widget
                      decoration: textFeildStyle("Email:"),
                      validator: (String? text) {
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: emailController,
                      //text form feild style use reuseable widget
                      decoration: textFeildStyle("Password:"),
                      validator: (String? text) {
                        return null;
                      },
                    ),

                    const SizedBox(
                      height: 18,
                    ),
                    ReuseableElevatedButton(onTap: () {},),
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                        child: TextButton(
                            onPressed: () {
                              //go to forget password screen use getx for routing
                              Get.to(ForgetPasswordScreen());
                            },
                            child: const Text(
                              "Forget Password ?",
                              style: TextStyle(
                                  color: Color.fromRGBO(95, 95, 95, 95)),
                            ))),
                    const SizedBox(
                      height: 8,
                    ),
                    //bootom part use reuseable widget
                    BottomText(
                      onTap: () {},
                      buttonText: "Signup",
                      firstText: 'Don’t have account?',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

