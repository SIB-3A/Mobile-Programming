import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const GridViewApp(), 
    );
  }
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Example'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Card(
            color: Colors.blue,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          );
        }),
      ),
    );
  }
}