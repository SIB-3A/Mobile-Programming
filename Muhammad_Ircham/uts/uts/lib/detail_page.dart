import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String deskripsi =
      "Samsung SM-A736B\nJl. Soekarno Hatta, Kecamatan lowokwaru, Kota Malang, Jawa Timur";
  bool showPopup = false; // untuk popup gambar di atas peta

  @override
  Widget build(BuildContext context) {
    final String imgPath = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Detail Foto',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FOTO DENGAN TOMBOL MELAYANG
            Stack(
              children: [
                Image.asset(imgPath),
                Positioned(
                  bottom: 15,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFloatingButton(Icons.brightness_low, "Hapus bayangan"),
                      _buildFloatingButton(Icons.blur_on, "Hapus pantulan"),
                      _buildFloatingButton(Icons.auto_fix_high, "Remaster"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // INFORMASI DETAIL
            Container(
              width: double.infinity,
              color: Colors.grey[850],
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. Baris tanggal foto (tetap bold)
                  const Text(
                    "Senin, 29 September 2025 - 18.22",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // 2. Deskripsi informasi yang bisa diubah
                  Text(
                    deskripsi,
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  ),

                  // Tombol ubah
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          deskripsi =
                              "Data telah diubah\nKamera: Galaxy A73\nLokasi: Kecamatan lowokwaru, Kota Malang";
                        });
                      },
                      child: const Text(
                        'Ubah',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // 3. Informasi penyimpanan file
                  Container(
                    width: double.infinity,
                    color: Colors.grey[800],
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "20250929_182230.jpg\n/Penyimpanan internal/DCIM/Camera",
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 6),

                  // 4. Informasi detail kamera
                  Container(
                    width: double.infinity,
                    color: Colors.grey[800],
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Samsung SM-A736B | 4000x2250 | 9MP\nISO 500 | 13mm | f/2.2 | 1/25 s",
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 6),

                  // 5. Peta dummy lokasi foto (DENGAN GAMBAR & POPUP)
                  Container(
                    width: double.infinity,
                    color: Colors.grey[800],
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.location_on,
                                color: Colors.redAccent, size: 22),
                            SizedBox(width: 8),
                            Text(
                              "Google Maps",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),

                        // 📍 MAP IMAGE DUMMY + POPUP
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/map_sample.png', // Ganti dengan peta kamu
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),

                            // Marker location
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showPopup = !showPopup;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(6),
                                child: const Icon(Icons.location_on,
                                    color: Colors.white, size: 40),
                              ),
                            ),

                            // Popup detail image di atas marker
                            if (showPopup)
                              Positioned(
                                top: 30,
                                child: Material(
                                  elevation: 6,
                                  borderRadius: BorderRadius.circular(12),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      imgPath,
                                      width: 130,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),

                        const SizedBox(height: 6),
                        const Text(
                          "Jl. Soekarno Hatta, Kecamatan Lowokwaru, Kota Malang",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Tombol oval transparan yang melayang di atas foto
  Widget _buildFloatingButton(IconData icon, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5), // transparan melayang
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    );
  }
}