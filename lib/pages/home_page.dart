// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catelog.dart';
import 'package:my_app/widgets/drawer.dart';
import 'dart:convert';
import 'package:my_app/widgets/gride_view.dart';
import 'package:my_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogjson = await rootBundle.loadString("assets/file/catalog.json");
    var decodeddata = jsonDecode(catalogjson);
    var productsdata = decodeddata["products"];
    CatalogModel.items = List.from(productsdata)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    //print(productsdata);
    setState(() {});
  }

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
      body: //itwidget(),
        (CatalogModel.items!=null && CatalogModel.items.isNotEmpty) ?
          GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              childAspectRatio: 0.85,
              //mainAxisSpacing: 5
              ),
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return itwidget(item: CatalogModel.items[index]); 
          },
        ):
        Center(
          child: CircularProgressIndicator(),
        ),
      //   Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 8),
      //   child: ListView.builder(
      //     itemCount: CatalogModel.items.length,
      //     itemBuilder: (context, index) {
      //       return itemwidget(item: CatalogModel.items[index]);
      //     }, 
      //   ),
      // ),
      drawer: MyDrawer(),
    );
  }
}
