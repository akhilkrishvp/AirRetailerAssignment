import 'package:airretailer/String/strings.dart';
import 'package:airretailer/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const PAGE = "/";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, LoginPage.PAGE));
    return Scaffold(
      body: Center(
        child: Text(
          splashText,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
