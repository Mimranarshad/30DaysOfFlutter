import 'package:flutter/material.dart';
import 'package:flutter_catalog_project/models/catalog.dart';
import 'package:flutter_catalog_project/widgets/items_widget.dart';
import '../veriables/veriables.dart';
import '../widgets/drawer.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final cataLogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(cataLogJson);
    var ProductData = decodedData["products"];
    CatalogModel.items =
        List.from(ProductData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App', style: TextStyle(color: dark)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: ((context, index) =>
                    ItemWidget(item: CatalogModel.items[index])))
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
