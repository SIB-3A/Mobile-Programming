import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> images = [
    'images/gambar1.jpg',
    'images/gambar2.jpg',
    'images/myprofile.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri Mahasiswa'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(16),
        crossAxisCount: 2, // jumlah kolom
        crossAxisSpacing: 8, // jarak antar kolom
        mainAxisSpacing: 8, // jarak antar baris
        childAspectRatio: 1.2, // UBAH NILAI INI UNTUK MENGATUR UKURAN
        children: images.map((path) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
