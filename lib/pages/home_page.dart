// ignore_for_file: prefer_const_constructors, unnecessary_const
import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quick Shop"),
          centerTitle: true,
          backgroundColor: Colors.deep,
        ),
        body: Center(
          child:Container(
            child: Text("This is My Text"),
          ),
        ),
        drawer: MyDrawer(),
    );
  }
}
