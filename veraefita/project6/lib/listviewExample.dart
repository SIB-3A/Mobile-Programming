import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  final List<String> items = ['Flutter', 'Dart', 'Python', 'Java', 'C++'];

  ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.code),
            title: Text(items[index]),
            onTap: () => print('Klik ${items[index]}'),
          );
        },
      ),
    );
  }
}
