import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800],
        elevation: 0, // Flat design
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon atau gambar welcome (bisa ganti dengan asset jika ada)
              Icon(
                Icons.school,
                size: 100,
                color: Colors.blue[400],
              ),
              SizedBox(height: 20),
              
              // Container untuk teks utama
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Selamat Datang!',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Tombol navigasi ke Profile
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile'); // Named Route
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[600],
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Lihat Profil',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}