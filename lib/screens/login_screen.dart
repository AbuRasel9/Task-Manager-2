import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../wdget/background_image.dart';

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
        const BackgroundImage(),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SafeArea(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text
                  const Text(
                    "Get Started With",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(46, 55, 79, 100),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: "Email",
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )),
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
                    decoration: const InputDecoration(
                        hintText: "Password",
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )),
                    validator: (String? text) {
                      return null;
                    },
                  ),

                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password ?",
                            style: TextStyle(
                                color: Color.fromRGBO(95, 95, 95, 95)),
                          ))),
                  SizedBox(height: 8,),
                  //bootom part
                  BootomText(text: 'Don’t have account?', onTap: () {  }, buttonText:"Signup",)
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}


class BootomText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final String buttonText;
  const BootomText({

    super.key, required this.text, required this.onTap, required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //text
         Text(text),
        TextButton(
            onPressed:onTap,
            child:  Text(
              buttonText,
              style: TextStyle(
                  color: Color.fromRGBO(
                      33, 191, 115, 100)),
            ))
      ],
    );
  }
}
