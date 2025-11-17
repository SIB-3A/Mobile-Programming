import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F1FA),
      appBar: AppBar(
        title: const Text(
          'Aplikasi Profil Mahasiswa',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent, 
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🩵 BAGIAN ATAS (BIRU MUDA, SEJAJAR DENGAN APPBAR)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              color: Colors.lightBlue[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // FOTO DENGAN OUTER LINE
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 4,
                      ),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/izzatir.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // TEKS SELAMAT DATANG & INFO
                  const Text(
                    'Selamat Datang di Website Izzatir Rofiah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Sistem Informasi Bisnis - Semester 5',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // 🎯 MENU KOTAK (PUTIH DENGAN BAYANGAN)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // KOTAK PROFIL
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    width: 120,
                    height: 120,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.person, size: 45, color: Colors.blueAccent),
                        SizedBox(height: 10),
                        Text(
                          'Profil',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // KOTAK GALERI
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/gallery');
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    width: 120,
                    height: 120,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.photo_album,
                            size: 45, color: Colors.purpleAccent),
                        SizedBox(height: 10),
                        Text(
                          'Galeri',
                          style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            const Text(
              'Pilih menu di atas untuk melanjutkan.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
