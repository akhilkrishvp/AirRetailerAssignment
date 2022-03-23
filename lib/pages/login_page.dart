import 'package:airretailer/String/strings.dart';
import 'package:airretailer/pages/widgets/textfield.dart';
import 'package:airretailer/provider/loginprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const PAGE = "SplashScreen";

  const LoginPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  _buildBody() {
    var phoneNumberController = TextEditingController();
    var passwordController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  loginHeader,
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 35),
                usernameContainer(context,
                    textEditingController: phoneNumberController,
                    labelText: username),
                passwordContainer(context,
                    textEditingController: passwordController,
                    labelText: password),
                const SizedBox(height: 25),
                buildLoginButton(),
                const SizedBox(height: 25),
                buildForgotPassword(),
              ],
            )),
        buildRegisterNow(),
        const SizedBox(height: 25),
      ],
    );
  }

  Widget buildLoginButton() {
    return GestureDetector(
        onTap: () {
          context.read<LoginProvider>().login(context);
        },
        child: Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.green),
            child: Center(
              child: Text(
                loginButtonText,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )));
  }

  buildForgotPassword() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        forgotPasswordText,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ),
    );
  }

  buildRegisterNow() {
    return GestureDetector(
        onTap: () {},
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: donthaveAccount),
              TextSpan(
                text: register,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
        ));
  }
}
