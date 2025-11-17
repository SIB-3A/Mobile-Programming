import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/avatar.png',
    'assets/images/1b.jpg',
    'assets/images/2f.jpg',
    'assets/images/3a.jpg',
    // Tambahkan path gambar lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Foto'),
        backgroundColor: Colors.purple,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(child: Icon(Icons.error, color: Colors.red));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
