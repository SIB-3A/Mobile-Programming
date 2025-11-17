import 'package:flutter/material.dart';

void main() {
  runApp(StylingExample());
}

class StylingExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Styling dan Positioning'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.lightBlueAccent,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Text(
                  'Tengah Layar',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}