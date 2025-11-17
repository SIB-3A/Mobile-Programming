import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // Data dummy untuk mata kuliah semester 5 (jadwal sederhana)
  final List<Map<String, String>> jadwalMatkul = [
    {'nama': 'Pemrograman Mobile', 'waktu': 'Senin 08:00-10:00', 'dosen': 'Dr. Andi'},
    {'nama': 'Basis Data Lanjutan', 'waktu': 'Selasa 10:00-12:00', 'dosen': 'Prof. Budi'},
    {'nama': 'Rekayasa Perangkat Lunak', 'waktu': 'Rabu 13:00-15:00', 'dosen': 'Dr. Citra'},
    {'nama': 'Kecerdasan Buatan', 'waktu': 'Kamis 08:00-10:00', 'dosen': 'Prof. Dewi'},
    {'nama': 'Jaringan Komputer', 'waktu': 'Jumat 10:00-12:00', 'dosen': 'Dr. Eko'},
    {'nama': 'Sistem Operasi', 'waktu': 'Sabtu 08:00-10:00', 'dosen': 'Prof. Fajar'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView( // Responsif untuk scroll panjang
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Identitas Profil: Container dengan Row
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5)],
              ),
              child: Row(
                children: [
                  // Avatar di kiri
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.blue[300]!, width: 2),
                    ),
                  ),
                  SizedBox(width: 16), // Jarak
                  // Info identitas di kanan (Column)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama: Khuzaima Filla Januartha',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text('NIM: 2341760078', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                        SizedBox(height: 4),
                        Text('Jurusan: Teknologi Informasi', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                        SizedBox(height: 4),
                        Text('Semester: 5', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Judul Jadwal Matkul
            Text(
              'Jadwal Mata Kuliah Semester 5',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // ListView untuk jadwal matkul
            Container(
              height: 300, // Tinggi cukup untuk 6 item, responsif
              child: ListView.builder(
                itemCount: jadwalMatkul.length,
                itemBuilder: (context, index) {
                  final matkul = jadwalMatkul[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[100],
                        child: Text('${index + 1}', style: TextStyle(color: Colors.blue[800])),
                      ),
                      title: Text(matkul['nama']!, style: TextStyle(fontWeight: FontWeight.w500)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Waktu: ${matkul['waktu']}', style: TextStyle(color: Colors.grey[600])),
                          Text('Dosen: ${matkul['dosen']}', style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                        ],
                      ),
                      trailing: Icon(Icons.schedule, color: Colors.blue[600]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // Tombol navigasi ke Gallery
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/gallery'); // Named Route
                },
                icon: Icon(Icons.photo_library, color: Colors.white),
                label: Text('Lihat Galeri', style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600],
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}