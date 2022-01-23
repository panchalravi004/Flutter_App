// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageUrl = "https://i.ibb.co/0tx4fqr/20211203-142756.jpg";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: null,
                ),
                accountName: Text(LoginPage.pname,style: TextStyle(color: Colors.black),),
                accountEmail: Text("Ravi@gmail.com",style: TextStyle(color: Colors.black),),
                //currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              title: Text("Home",
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(
                Icons.category_outlined,
                color: Colors.black,
              ),
              title: Text("Product",
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
