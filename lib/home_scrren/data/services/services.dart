import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;
import 'dart:developer';

class HomeServices {
  // LOGIN USER
  static Future<http.Response> fetchChart() async {
    var data = {"angular_test": "angular-developer"};
    debugPrint("This is api "
        " https://g54qw205uk.execute-api.eu-west-1.amazonaws.com/DEV/stub");
    log("This value is passing ${json.encode(data)}");
    var headers = {'Content-Type': 'application/json'};
    final response = await http
        .post(
      Uri.parse(
          'https://g54qw205uk.execute-api.eu-west-1.amazonaws.com/DEV/stub'),
      body: json.encode(data),
      headers: headers,
    )
        .catchError((e) {
      debugPrint(e);
    });
    log(response.body);
    return response;
  }
}
