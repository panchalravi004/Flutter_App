import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quick Shop"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("This is My App"),
        ),
        drawer: Drawer(
        )
    );
  }
}
