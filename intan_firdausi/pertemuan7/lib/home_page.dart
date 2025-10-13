import 'package:flutter/material.dart';
import 'routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Button untuk Profile Page
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.profile);
              },
              child: Text('Lihat Profile Mahasiswa'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            SizedBox(height: 20),

            // Button untuk Gallery Page
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.gallery);
              },
              child: Text('Lihat Gallery Foto'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
