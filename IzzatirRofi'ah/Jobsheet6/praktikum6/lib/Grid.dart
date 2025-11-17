import 'package:flutter/material.dart';

void main() {
  runApp(GridExample());
}

class GridExample extends StatelessWidget {
  const GridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Example'),
        ),
        body: GridView.count(
          crossAxisCount: 2, // jumlah kolom
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
      ),
    );
  }
}
