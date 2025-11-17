import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mataKuliah = [
      'Pemrograman Mobile',
      'Kecerdasan Buatan',
      'Jaringan Komputer',
      'Analisis dan Desain Sistem',
      'Manajemen Proyek TI',
      'Keamanan Informasi',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.photo),
            onPressed: () => Navigator.pushNamed(context, '/gallery'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage('assets/pic1.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.indigo, width: 3),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Reza Angelina',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('NIM: 220123456'),
                    Text('Program Studi: Informatika'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.indigo[50],
              child: const Text(
                'Daftar Mata Kuliah Semester 5',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: mataKuliah.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.book),
                  title: Text(mataKuliah[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}