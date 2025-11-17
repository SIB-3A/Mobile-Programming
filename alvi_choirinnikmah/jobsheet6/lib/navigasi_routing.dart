import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Utama')),
      body: Center(
        child: ElevatedButton(
          // child: Text('Ke Halaman Kedua'),
          // onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => SecondPage()),
          //   );
          // },
          onPressed: () => Navigator.pushNamed(context, '/second'),
          child: Text('Ke Halaman Kedua'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Kedua')),
      body: Center(
        child: ElevatedButton(
          child: Text('Kembali'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
