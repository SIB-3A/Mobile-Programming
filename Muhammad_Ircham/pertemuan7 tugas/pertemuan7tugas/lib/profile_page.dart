import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<String> mataKuliah = [
    'Perencanaan Sumber Daya',
    'Pemrograman Mobile',
    'Keselamatan dan Kesehatan Kerja',
    'Metodologi Penelitian',
    'Penjaminan Mutu Perangkat Lunak',
    'Manajemen Proyek Sistem Informasi',
    'Kecerdasan Bisnis',
    'Manajemen Rantai Pasok',
    'Audit Sistem Informasi',
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final themeColor = const Color.fromARGB(255, 0, 0, 0);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: themeColor,
        foregroundColor: const Color.fromARGB(255, 255, 0, 0),
        elevation: 3,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  pofil Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: themeColor, width: 2),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'), // Ganti sesuai path kamu
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Muhammad Ircham ',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Text('NIM: 2341760115'),
                        Text('Jurusan: Teknologi Informasi'),
                        Text('Semester: 5'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // 📚 Daftar Mata Kuliah
            const Text(
              'Mata Kuliah Semester 5',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: mataKuliah.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: themeColor,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                      ),
                    ),
                    title: Text(mataKuliah[index]),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Color.fromARGB(255, 255, 0, 0)),
                  ),
                );
              },
            ),

            const SizedBox(height: 30),

            // 🖼 Tombol Galeri
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/gallery');
                },
                icon: const Icon(Icons.photo_library, color: Color.fromRGBO(255, 0, 0, 1)),
                label: const Text(
                  'Lihat Galeri',
                  style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 255, 0, 0)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}