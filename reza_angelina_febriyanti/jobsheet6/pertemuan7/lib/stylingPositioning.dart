import 'package:flutter/material.dart';

void main() {
  runApp(const StylingPositioning());
}

class StylingPositioning extends StatelessWidget {
  const StylingPositioning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Styling dan Positioning')),
        body: Stack(
          children: [
            Container(color: Colors.lightBlueAccent),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: const Text(
                  'Tengah Layar',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}