import 'package:flutter/material.dart';

void main() {
  runApp(ListViewExample());
}

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});
  final List<String> items = ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'API'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh ListView')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.code),
              title: Text(items[index]),
              onTap: () => print('Klik: ${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}