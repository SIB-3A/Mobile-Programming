import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final List<String> mataKuliah = [
    'Perencanaan Sumber Daya',
    'Pemrograman Mobile',
    'Keselamatan dan Kesehatan Kerja',
    'Metodologi Penelitian',
    'PMPL',
    'Manajemen Proyek',
    'Kecerdasan Bisnis',
    'Manajemen Rantai Pasok',
    'Analisis Proses Sistem Informasi',
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Mahasiswa')),
      body: Column(
        children: [
          // Bagian profil
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset('images/myprofile.jpg', width: 80),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Alvi Choirinnikmah',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('NIM: 2341760191'),
                    Text('Prodi: D-IV Sistem Informasi Bisnis'),
                  ],
                ),
              ],
            ),
          ),

          // Daftar mata kuliah
          Expanded(
            child: ListView.builder(
              itemCount: mataKuliah.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text(mataKuliah[index]),
                );
              },
            ),
          ),

          // Tombol ke galeri
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/gallery');
            },
            child: Text('Lihat Galeri'),
          ),
        ],
      ),
    );
  }
}