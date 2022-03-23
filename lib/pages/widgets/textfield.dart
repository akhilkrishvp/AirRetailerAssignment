import 'package:airretailer/provider/loginprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

usernameContainer(BuildContext context,
    {required TextEditingController textEditingController,
    required String labelText}) {
  return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 15,
      ),
      child: SizedBox(
        height: 55.0,
        child: TextField(
          onChanged: ((value) {
            context.read<LoginProvider>().setUserName(value);
          }),
          controller: textEditingController,
          cursorColor: Colors.black26,
          style: const TextStyle(
            color: Colors.black26,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            labelText: labelText,
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ));
}

passwordContainer(BuildContext context,
    {required TextEditingController textEditingController,
    required String labelText}) {
  return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 15,
      ),
      child: SizedBox(
        height: 55.0,
        child: TextField(
          onChanged: ((value) {
            context.read<LoginProvider>().setPassword(value);
          }),
          controller: textEditingController,
          cursorColor: Colors.black26,
          style: const TextStyle(
            color: Colors.black26,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            labelText: labelText,
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ));
}
