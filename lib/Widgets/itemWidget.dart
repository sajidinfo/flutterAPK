import 'package:flutter/material.dart';

import 'data.dart';

class ItemsWidget extends StatelessWidget {
  final Items items;
  const ItemsWidget({Key? key,required this.items}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(items.img),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text("\$ ${items.price}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
    );
  }
}

Widget firstRow() {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Icon(Icons.favorite,
          color: Colors.green,
        ),
      ),
      Text(
        'BEAMS',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}