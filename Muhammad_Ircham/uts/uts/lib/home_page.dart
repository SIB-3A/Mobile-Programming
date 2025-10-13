import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> dataBerita = [
    {
      "tanggal": "5 Okt",
      "lokasi": "Kecamatan Pakis",
      "foto": ["assets/images/foto1.jpg", "assets/images/foto2.jpg"]
    },
    {
      "tanggal": "3 Okt",
      "lokasi": "Kecamatan Pakis",
      "foto": ["assets/images/foto3.jpg", "assets/images/foto4.jpg"]
    },
    {
      "tanggal": "30 Sep",
      "lokasi": "Kecamatan Pademawu",
      "foto": ["assets/images/foto1.jpg", "assets/images/foto3.jpg", "assets/images/foto2.jpg"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      // ✅ APPBAR TANPA NAMA, DENGAN ICON DI KANAN ATAS
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        automaticallyImplyLeading: false, // hilangkan back button
        elevation: 0,
        title: const SizedBox.shrink(), // tanpa teks judul
        actions: [
          IconButton(
            onPressed: () {
              // aksi untuk cloud
            },
            icon: const Icon(Icons.cloud_outlined, color: Colors.white70),
          ),
          IconButton(
            onPressed: () {
              // aksi untuk search
            },
            icon: const Icon(Icons.search, color: Colors.white70),
          ),
          IconButton(
            onPressed: () {
              // aksi untuk 3 dots
            },
            icon: const Icon(Icons.more_vert, color: Colors.white70),
          ),
        ],
      ),

      // ✅ BODY: LIST FOTO BERITA
      body: ListView.builder(
        itemCount: dataBerita.length,
        itemBuilder: (context, index) {
          var item = dataBerita[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: const Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${item['tanggal']}   ${item['lokasi']}",
                      style: const TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: (item['foto'] as List<String>)
                            .map((img) => GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/detail',
                                      arguments: img,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(img, width: 100),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),

      // ✅ BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.image), label: 'Gambar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.album), label: 'Album'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}