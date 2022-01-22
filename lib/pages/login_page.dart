// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formkey.currentState!.validate())
    {
        setState(() {
          changeButton = true;
        });
        Future.delayed(Duration(seconds: 1));
        Navigator.pushNamed(context, MyRoutes.homeroutes);
        setState(() {
          changeButton = false;
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    double space = 40;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                width: 280,
                height: 280,
              ),
              Text(
                "WELCOME $name",
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
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Enter Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username Cant Be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: space),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Enter Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Cant Be empty";
                        }
                        else if (value.length < 6) {
                          return "Password should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: space),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 40 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          //   // shape: changeButton
                          //   //     ? BoxShape.circle
                          //   //     : BoxShape.rectangle
                          //   borderRadius:
                          //       BorderRadius.circular(changeButton ? 40 : 8),
                          // ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       //print("Hello");
                    //       Navigator.pushNamed(context, MyRoutes.homeroutes);
                    //     },
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //     child: Text("Login")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
