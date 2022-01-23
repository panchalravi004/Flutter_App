import 'package:flutter/material.dart';
import 'package:my_app/models/catelog.dart';

class itemwidget extends StatelessWidget {
  final Item item;

  const itemwidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.2,
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
