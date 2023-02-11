import 'package:flutter/material.dart';
import 'package:flutter_catalog_project/models/catalog.dart';
import 'package:flutter_catalog_project/widgets/items_widget.dart';
import '../veriables/veriables.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App', style: TextStyle(color: dark)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: ((context, index) {
              return ItemWidget(item: dummyList[index]);
            })),
      ),
      drawer: MyDrawer(),
    );
  }
}
