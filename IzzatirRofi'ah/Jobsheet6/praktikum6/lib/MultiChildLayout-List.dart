import 'package:flutter/material.dart';

// BAGIAN INI UNTUK MULTI CHILD LAYOUT LISTVIEW
void main() {
  runApp(ListViewExample());
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh ListView'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Item 1'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Item 2'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Item 3'),
            ),
          ],
        ),
      ),
    );
  }
}
