import 'dart:convert';
import 'package:airretailer/service/api.dart';
import 'package:http/http.dart' as http;

import '../models/loginmodel.dart';

Future<LoginModel> fetchLoginDetails(
    String phoneNumber, String password) async {
  final response = await http.post(Uri.parse(baseUrl + login),
      headers: <String, String>{
        'content-type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'phone': phoneNumber,
        'password': password,
        "device_token": "123456",
        "device_id": "123456",
        "device_os": "ios"
      }));

  if (response.statusCode == 200) {
    return LoginModel.fromJson(jsonDecode(response.body));
  } else {
    LoginModel errorOb =
        LoginModel(errorMessage: "Invalid details", status: false);

    return errorOb;
  }
}
