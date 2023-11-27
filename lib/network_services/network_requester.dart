import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/screens/login_screen.dart';

class networkRequester {
  //get method
  Future getRequester(String url) async {
    //try catch use for catch error
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print("request failled");
      }
    } catch (e) {
      print(e);
    }
  }

  //post method
  Future postRequester(String url, Map<String, String> body) async {
    //try catch use for catch error
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: {
            "Content-type": "application/json",
            "Accept": "application/json"
          },
          body: jsonEncode(body));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        final shareprefs = await SharedPreferences.getInstance();
        shareprefs.clear();
        Navigator.pushAndRemoveUntil(
            MyApp.navigatorKey.currentState!.context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false);
      } else {
        print("request failled");
      }
    } catch (e) {
      print(e);
    }
  }
}
