import 'package:flutter/material.dart';

void main() {
  runApp(const GantiWarnaApp());
}

class GantiWarnaApp extends StatefulWidget {
  const GantiWarnaApp({super.key});

  @override
  State<GantiWarnaApp> createState() => _GantiWarnaAppState();
}

class _GantiWarnaAppState extends State<GantiWarnaApp> {
  bool isBlue = true;

  void _ubahWarna() {
    setState(() {
      isBlue = !isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Stateful: Ubah Warna'),
          backgroundColor: isBlue ? Colors.blue : Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( 
                isBlue ? 'Warna Biru' : 'Warna Pink',
                  style: TextStyle(
                    fontSize: 24,
                    color: isBlue ? Colors.blue : Colors.pink[900],
                    fontWeight: FontWeight.bold
                  ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahWarna,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isBlue ? Colors.blue : Colors.pink,
                ),
                child: const Text('Ubah Warna'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}