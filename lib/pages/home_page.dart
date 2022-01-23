// ignore_for_file: prefer_const_constructors, unnecessary_const
import 'package:flutter/material.dart';
import 'package:my_app/models/catelog.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quick Shop",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body:
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 8),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return itemwidget(item: CatalogModel.items[index]);
            },
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}
