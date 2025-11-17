import 'package:flutter/material.dart';
import 'routes.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  // Data aset gambar yang sudah dimasukkan ke folder assets/images/
  final List<String> galleryAssets = const [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Gambar'),
        automaticallyImplyLeading: false, // Hilangkan tombol back default
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        // GridView untuk galeri
        child: GridView.builder(
          itemCount: galleryAssets.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 kolom
            crossAxisSpacing: 12.0, // Jarak antar kolom
            mainAxisSpacing: 12.0, // Jarak antar baris
            childAspectRatio: 0.9, // Rasio sedikit lebih vertikal
          ),
          itemBuilder: (context, index) {
            final assetPath = galleryAssets[index];

            // Kontainer untuk setiap item galeri
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    'Gambar ${index + 1}', // Judul dinamis
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    assetPath.split('/').last,
                  ), // Menampilkan nama file
                ),
                // Ganti Placeholder dengan Image.asset
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.cover, // Memastikan gambar mengisi area GridTile
                  // Jika gambar gagal dimuat (misalnya path salah atau lupa pubspec)
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[800],
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error, color: Colors.red, size: 40),
                            Text(
                              'Gagal Muat Gambar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
      // Floating Action Button untuk kembali ke Profil (Home)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi kembali ke halaman home
          Navigator.pushReplacementNamed(context, AppRoutes.home);
        },
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(Icons.person), // Ganti ikon menjadi profil
      ),
    );
  }
}
