// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/catelog.dart';

class itwidget extends StatefulWidget {
  final Item item;
  const itwidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  State<itwidget> createState() => _itwidgetState();
}

class _itwidgetState extends State<itwidget> {
  static bool change = false;
  static bool heart_click = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            change = true;
          });
        },
        child: Card(
          elevation: 1,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 400),
            width: 180,
            height: 210,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                // ignore: unnecessary_new
                new BoxShadow(
                  color: change ? Colors.black38 : Colors.transparent,
                  spreadRadius: 0.1,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.network(widget.item.image)),
                ),
                Title(color: Colors.black, child: Text(widget.item.name)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Text(widget.item.desc,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 10)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: InkWell(
                            onTap: () {
                              heart_click
                                  ? heart_click = false
                                  : heart_click = true;
                            },
                            child: heart_click
                                ? Icon(CupertinoIcons.heart_fill,size: 30,color: Colors.pink,)
                                : Icon(CupertinoIcons.heart,size: 30,)
                            ),
                      ),
                      Text(
                        "\$ ${widget.item.price}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
