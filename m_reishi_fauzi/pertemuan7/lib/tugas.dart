// lib/main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa (Single File Demo)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/gallery': (context) => const GalleryPage(),
      },
    );
  }
}

/* ===================== HomePage ===================== */
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Tugas: Profil Mahasiswa',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 18),
              ElevatedButton.icon(
                icon: const Icon(Icons.person),
                label: const Text('Buka Profil'),
                onPressed: () => Navigator.pushNamed(context, '/profile'),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                icon: const Icon(Icons.photo_library),
                label: const Text('Buka Galeri (Named Route)'),
                onPressed: () => Navigator.pushNamed(context, '/gallery'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* ===================== ProfilePage ===================== */
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List<String> subjects = [
    'Algoritma dan Struktur Data',
    'PBO (Pemrograman Berorientasi Objek)',
    'Sistem Operasi',
    'Basis Data Lanjut',
    'Jaringan Komputer',
    'Rekayasa Perangkat Lunak',
    'Interaksi Manusia dan Komputer',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final avatarSize = (width * 0.22).clamp(72.0, 140.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            tooltip: 'Buka Galeri',
            icon: const Icon(Icons.photo),
            onPressed: () => Navigator.pushNamed(context, '/gallery'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top profile row
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Avatar
                  Container(
                    width: avatarSize,
                    height: avatarSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.teal, width: 3),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Name & details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Nama: M Reishi Fauzi',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text('NIM: 234111111'),
                        SizedBox(height: 4),
                        Text('Program Studi: Sistem Informasi Bisnis'),
                        SizedBox(height: 4),
                        Text('Semester: 5'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // About / bio
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Tentang Saya',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Saya mahasiswa semester 5 yang tertarik pada pengembangan aplikasi mobile dan web. Saya sedang berusaha QwQ.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Subjects list container with ListView
            Container(
              height: 240,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: Text(
                      'Mata Kuliah Semester 5',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.separated(
                      itemCount: subjects.length,
                      separatorBuilder: (context, index) =>
                          const Divider(height: 1),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(child: Text('${index + 1}')),
                          title: Text(subjects[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Actions row
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.photo_album),
                    label: const Text('Buka Galeri'),
                    onPressed: () => Navigator.pushNamed(context, '/gallery'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    child: const Text('Edit Profil'),
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Fitur edit belum ada')),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/* ===================== GalleryPage ===================== */
class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const List<String> images = [
    'assets/images/pic1.jpeg',
    'assets/images/pic2.jpg',
    'assets/images/pic1.jpeg',
    'assets/images/pic2.jpg',
    'assets/images/pic1.jpeg',
    'assets/images/pic2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final crossAxis = width > 700 ? 4 : (width > 400 ? 3 : 2);

    return Scaffold(
      appBar: AppBar(title: const Text('Galeri')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxis,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            final img = images[index];
            return GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    child: InteractiveViewer(
                      child: Image.asset(img, fit: BoxFit.contain),
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(img, fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }
}
