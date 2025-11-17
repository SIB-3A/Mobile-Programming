import 'package:flutter/material.dart';

// BAGIAN INI UNTUK COLUMN
void main() {
  runApp(ColumnExample());
}

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column Column')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini baris pertama'),
            Text('Ini baris kedua'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol'),
            ),
          ],
        ),
      ),
    );
  }
}