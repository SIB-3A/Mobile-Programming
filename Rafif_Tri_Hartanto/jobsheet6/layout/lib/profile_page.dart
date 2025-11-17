import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<String> mataKuliah = const [
    'Pemrograman Mobile',
    'Manajemen Rantai Pasok',
    'Kecerdasan Bisnis',
    'Metodelogi Penelitian',
    'Audit Sistem Informasi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian profil
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Nama: Rafif Tri Hartanto',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('NIM: 2241760038'),
                      Text('Kelas: SIB-3A'),
                    ],
                  ),
                ],
              ),
            ),

            // Daftar mata kuliah
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Mata Kuliah Semester 5',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
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
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/gallery'),
              icon: const Icon(Icons.photo),
              label: const Text('Buka Galeri'),
            ),
          ],
        ),
      ),
    );
  }
}
