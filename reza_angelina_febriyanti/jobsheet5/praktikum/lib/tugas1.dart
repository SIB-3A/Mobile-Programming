import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.teal,
      ),
      home: const ProfilePage(),
    );
  }
}

//Halaman Profile
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Mahasiswa'),
      ),
      body: Container(
        color: Colors.teal.shade50,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(size: 80),
            const SizedBox(height: 16),

            Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: ClipOval(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset(
                    'assets/reza.jpg',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Placeholder(
                        fallbackWidth: 120,
                        fallbackHeight: 120,
                        color: Colors.red,
                      );
                    },
                  ),
                ),
              ),
            ),

            //Nama, NIM, jurusan
            const Text(
              'Nama: Reza Angelina Febriyanti',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            const Text(
              'NIM: 2341760015',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 4),
            const Text(
              'Jurusan: D4-Sistem Informasi Bisnis',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}