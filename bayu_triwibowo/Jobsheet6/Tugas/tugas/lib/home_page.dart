import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = const Color.fromARGB(255, 25, 68, 210);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: themeColor,
        centerTitle: true,
        elevation: 3,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade50, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.home_rounded,
              size: 80,
              color:  Color.fromARGB(255, 25, 68, 210),
            ),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color:  Color.fromARGB(255, 25, 68, 210),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Aplikasi Profil Mahasiswa',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              icon: const Icon(Icons.person, color: Colors.white),
              label: const Text(
                'Lihat Profil',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: themeColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
