import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // Data Profil
  final String nama = "Paudra Akbar Buana";
  final String nim = "2341760063";
  final String jurusan = "Sistem Informasi Bisnis";

  // Daftar Mata Kuliah Semester 5
  final List<String> mataKuliah = const [
    "Audit Sistem Informasi",
    "Keselematan dan Kesehatan Kerja",
    "Kecerdasan Bisnis",
    "Manajemen Proyek Sistem Informasi",
    "Manajemen Rantai Pasok",
    "Metodologi Penelitian",
    "Pemrograman Mobile",
    "Penjaminan Mutu Perangkat Lunak",
    "Perencanaan Sumber Daya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // CONTAINER 1: HEADER PROFIL (Row & Column)
            _buildProfileHeader(context),

            const SizedBox(height: 20),

            // CONTAINER 2: DAFTAR MATA KULIAH (ListView)
            _buildCourseList(context),
          ],
        ),
      ),
    );
  }

  // Bagian Header Profil
  Widget _buildProfileHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // FOTO PROFIL (Image/Placeholder)
          CircleAvatar(
            radius: 50,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
            // child: Icon(
            //   Icons.person,
            //   size: 50,
            //   color: Theme.of(context).primaryColor,
            // ),
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          const SizedBox(width: 20),
          // DETAIL PROFIL (Column)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nama,
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 5),
                Text('NIM: $nim', style: GoogleFonts.poppins(fontSize: 16)),
                Text(
                  'Jurusan: $jurusan',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                const SizedBox(height: 15),
                // Tombol aksi atau ikon tambahan
                Row(
                  children: [
                    const Icon(Icons.email, size: 18, color: Colors.grey),
                    const SizedBox(width: 5),
                    const Text('paudra.akbar@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Bagian Daftar Mata Kuliah
  Widget _buildCourseList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daftar Mata Kuliah Semester 5',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const Divider(color: Colors.grey, height: 20),
          // Tambahkan daftar mata kuliah menggunakan ListView.builder
          // Karena ini ada di dalam SingleChildScrollView, kita harus
          // membatasi tingginya menggunakan Container atau SizedBox.
          SizedBox(
            height: mataKuliah.length * 50.0, // Perkiraan tinggi setiap item 50
            child: ListView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // Nonaktifkan scroll ListView
              itemCount: mataKuliah.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(
                    mataKuliah[index],
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
