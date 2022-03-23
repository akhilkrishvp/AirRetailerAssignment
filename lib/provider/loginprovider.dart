import 'package:airretailer/models/loginmodel.dart';
import 'package:airretailer/pages/home_page.dart';
import 'package:airretailer/service/login_session.api.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  String username = "";
  String password = "";
  LoginModel? loginModel;
  String? errorMessage;

  setUserName(value) {
    username = value;
  }

  setPassword(value) {
    password = value;
  }

  login(BuildContext context) {
    fetchLoginDetails(username, password).then((value) {
      if (value.status == true) {
        Navigator.pushNamed(context, HomePage.PAGE);
      } else {
        errorMessage = value.errorMessage;
      }
      return value.status;
    });
  }
}
