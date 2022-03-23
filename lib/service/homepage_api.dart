import 'dart:convert';
import 'package:airretailer/models/homepagemodel.dart';
import 'package:airretailer/service/api.dart';
import 'package:http/http.dart' as http;

Future<HomePageModel> fetchHomePageData() async {
  final response = await http.get(Uri.parse(baseUrl + homeList));

  if (response.statusCode == 200) {
    return HomePageModel.fromJson(jsonDecode(response.body));
  } else {
    HomePageModel errorOb =
        HomePageModel(errorMessage: "Invalid details", status: false);

    return errorOb;
  }
}
