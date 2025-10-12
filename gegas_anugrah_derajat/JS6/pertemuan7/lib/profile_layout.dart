import 'package:flutter/material.dart';

void main() {
  runApp(ProfileLayoutApp());
}

class ProfileLayoutApp extends StatelessWidget {
  const ProfileLayoutApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Profile Layout')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50, backgroundImage: const AssetImage('assets/images/avatar.png')),
            SizedBox(height: 10),
            Text('Gegas Anugrah', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
            SizedBox(height: 5),
            Text('Flutter Developer', style: TextStyle(color: Colors.grey[600])),
          ],
        ),
      ),
    );
  }
}