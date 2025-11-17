import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styling Example',
      home: StylingExample(),
    );
  }
}
class StylingExample extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('Styling dan Positioning')),
            body: Stack(
                children: [
                    Container(color: Colors.lightBlueAccent),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.all(20),
                            color: Colors.white,
                            child: Text(
                                'Tengah Layar',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}