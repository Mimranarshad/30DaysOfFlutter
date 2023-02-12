import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidget extends StatefulWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
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
                  fit: BoxFit.cover, image: NetworkImage(widget.item.image))),
        ),
        title: Text(widget.item.name),
        subtitle: Text(widget.item.desc, style: TextStyle(fontSize: 14)),
        trailing: Text("\$${widget.item.price.toStringAsFixed(2)}"),
      ),
    );
  }
}
