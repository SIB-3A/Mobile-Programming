import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/foto1.jpg',
      'assets/images/foto2.jpg',
      'assets/images/foto3.jpg',
      'assets/images/foto4.jpg',
      'assets/images/foto5.jpg',
      'assets/images/foto6.jpg',
      'assets/images/foto7.jpg',
      'assets/images/foto8.jpg',
      'assets/images/foto9.jpg',
    ];

    return Scaffold(
      // 🌈 Warna background keseluruhan
      backgroundColor: const Color(0xFFE8F1FA),

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Galeri Mahasiswa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),

      // 📸 GRID GALERI FOTO
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // jumlah kolom
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white, // agar foto kontras
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
