import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> gambar = [
      'assets/pic1.jpg',
      'assets/pic2.png',
      'assets/pic3.png',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Galeri Mahasiswa')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(gambar[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}