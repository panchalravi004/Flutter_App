// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double space = 40;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
            SizedBox(height: space),
            Text(
              "LOGIN",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Enter Username",
                    ),
                  ),
                  SizedBox(height: space),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Enter Password",
                    ),
                  ),
                  SizedBox(height: space),
                  ElevatedButton(
                      onPressed: () {
                        //print("Hello");
                        Navigator.pushNamed(context, MyRoutes.homeroutes);
                      },
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      child: Text("Login")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
