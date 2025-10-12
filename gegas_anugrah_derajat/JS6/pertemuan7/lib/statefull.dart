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
  bool _isBlue = true;

  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Statefull: Ubah Warna'),
          backgroundColor: _isBlue ? Colors.blue : Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _isBlue ? 'Warna yang diubah: biru' : 'Warna yang diubah: merah muda',
                style: TextStyle(
                  fontSize: 20,
                  color: _isBlue ? Colors.blue[900] : Colors.pink[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahWarna, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isBlue ? Colors.blue : Colors.pink,
                ),
                child: const Text('Ubah warna'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}