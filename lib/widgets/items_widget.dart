import 'package:flutter/material.dart';
import '../models/catalog.dart';
import '../veriables/veriables.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => {},
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(item.image))),
        ),
        title: Text(
          item.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Text(item.desc, style: TextStyle(fontSize: 14)),
        trailing: Text("\$${item.price.toStringAsFixed(2)}",
            style: TextStyle(fontWeight: FontWeight.bold),
            textScaleFactor: 1.2),
      ),
    );
  }
}
