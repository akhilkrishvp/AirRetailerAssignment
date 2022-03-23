import 'package:airretailer/pages/home_page.dart';
import 'package:airretailer/pages/login_page.dart';
import 'package:airretailer/pages/splash_screen.dart';
import 'package:airretailer/provider/homepadeg_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/loginprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.PAGE,
        routes: {
          SplashScreen.PAGE: (BuildContext context) {
            return const SplashScreen();
          },
          LoginPage.PAGE: (BuildContext context) {
            return ChangeNotifierProvider(
              create: (_) => LoginProvider(),
              child: const LoginPage(),
            );
          },
          HomePage.PAGE: (BuildContext context) {
            return ChangeNotifierProvider(
              create: (_) => HomePageProvider(),
              child: const HomePage(),
            );
          },
        });
  }
}
