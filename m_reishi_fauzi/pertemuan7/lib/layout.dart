import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileLayout(),
  ));
}

class ProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Profil')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
          SizedBox(height: 10),
          Text(
            'Reishi Fauzi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text('Flutter Developer', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    );
  }
}
