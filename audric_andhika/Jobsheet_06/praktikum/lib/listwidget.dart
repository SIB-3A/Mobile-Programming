import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewExample(),
  ));
}

class ListViewExample extends StatelessWidget {
  final List<String> items = ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'API'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Example')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () => print('Klik: ${items[index]}'), 
          );
        },
      ),
    );
  }
}