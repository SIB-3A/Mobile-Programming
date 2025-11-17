import 'package:flutter/material.dart';

void main() {
  runApp(ProfileLayout());
}

class ProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://picsum.photos/200/300')),
          SizedBox(height: 10),
          Text('Khuzaima Filla Januartha', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text('Flutter Developer', style: TextStyle(color: Colors.grey[600])),
        ]
      )
    );
  }
}