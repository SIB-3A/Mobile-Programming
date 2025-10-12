import 'package:flutter/material.dart';
import 'routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mataKuliah = [
      'Pemrograman Mobile',
      'Kecerdasan Bisnis',
      'Metodologi Penelitian',
      'K3',
      'Penjaminan Mutu Perangkat Lunak',
      'Manajemen Proyek Sistem Informasi',
      'Manajemen Rantai Pasok',
      'Audit Sistem Informasi',
      'Perencanaan Sumber Daya',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Profile Mahasiswa')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Bagian profil atas
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Nama: Gegas Anugrah Derajat',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text('NIM: 2341760140', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Jurusan: Teknologi Informasi', style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Daftar mata kuliah
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Daftar Mata Kuliah Semester 5',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blueAccent),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      itemCount: mataKuliah.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.book),
                          title: Text(mataKuliah[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.gallery);
              },
              icon: const Icon(Icons.photo_library),
              label: const Text('Lihat Galeri', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
