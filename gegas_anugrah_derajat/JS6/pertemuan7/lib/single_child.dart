import 'package:flutter/material.dart';

void main() {
  runApp(const SingleChildExample());
}

class SingleChildExample extends StatelessWidget {
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Single Child'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'Halo, saya Single Child!',
            style: TextStyle(fontSize: 20),
          )
        ),
      ),
    );
  }
}