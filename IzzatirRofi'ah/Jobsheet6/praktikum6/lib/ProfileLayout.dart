import 'package:flutter/material.dart';

void main() {
  runApp(ProfileLayout());
}

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Layout'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/izzatir.png')),
              SizedBox(height: 10),
            Text(
              'Izzatir Rofiah',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16, color: Colors.grey[600])),
          ],
        )
      ),
    );
  }
}