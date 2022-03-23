import 'package:airretailer/models/homepagemodel.dart';
import 'package:airretailer/service/homepage_api.dart';
import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier {
  HomePageModel? homePageModel;
  String? errorMessage;
  int count = 0;
  bool isLoading = false;

  getData() {
    isLoading = true;

    fetchHomePageData().then((value) {
      if (value.status == true) {
        homePageModel = value;
        count = value.data!.length;

        isLoading = false;
        notifyListeners();
      } else {
        errorMessage = value.errorMessage;
      }
      return value.status;
    });
  }
}
