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
      home: const GridExample(),
    );
  }
}

class GridExample extends StatelessWidget {
  const GridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contoh GridView')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Card(
            color: Colors.blue[100],
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          );
        }),
      ),
    );
  }
}
