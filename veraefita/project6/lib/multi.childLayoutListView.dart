import 'package:flutter/material.dart';

void main() {
  runApp(ListViewExample());
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh ListView')),
        body: ListView(
          children: [
            ListTile(title:Text('Item1'), leading: Icon(Icons.star)),
            ListTile(title:Text('Item2'), leading: Icon(Icons.favorite)),
            ListTile(title:Text('Item3'), leading: Icon(Icons.home)),
          ],
        ),
      ),
    );
  }
}