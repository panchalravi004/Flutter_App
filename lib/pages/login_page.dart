// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            width: 280,
            height: 280,
          ),
          Text(
            "WELCOME",
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 10,
            ),
          ),
          Text(
            "LOGIN",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
