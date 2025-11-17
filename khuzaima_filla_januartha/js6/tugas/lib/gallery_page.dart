import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  // Daftar gambar assets
  final List<String> images = [
    'assets/images/pic1.png',
    'assets/images/pic2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri'),
        backgroundColor: Colors.green[800], // Warna beda biar menarik
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Kembali pakai Navigator
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 kolom responsif
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1, // Persegi panjang
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}