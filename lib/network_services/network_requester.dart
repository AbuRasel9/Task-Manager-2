import 'dart:convert';

import 'package:http/http.dart' as http;

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
      } else {
        print("request failled");
      }
    } catch (e) {
      print(e);
    }
  }
}
