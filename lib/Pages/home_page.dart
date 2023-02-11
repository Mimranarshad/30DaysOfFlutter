import 'package:flutter/material.dart';
import '../veriables/veriables.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App', style: TextStyle(color: dark)),
      ),
      body: Center(
        child: Container(child: Text('Welcome to $days days of flutter')),
      ),
      drawer: MyDrawer(),
    );
  }
}
