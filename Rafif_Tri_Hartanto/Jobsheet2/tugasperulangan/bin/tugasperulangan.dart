import 'dart:io';

void main() {
  // Map untuk menyimpan data mahasiswa dan nilainya
  Map<String, int> dataMahasiswa = {};

  // Input data untuk 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai ujian $nama: ");
    int? nilai = int.tryParse(stdin.readLineSync()!);

    if (nama != null && nilai != null) {
      dataMahasiswa[nama] = nilai;
    } else {
      print("Input tidak valid, coba lagi.");
      i--; // ulang input
    }
  }

  print("\n=== Hasil Akhir ===");
  dataMahasiswa.forEach((nama, nilai) {
    String kategori;

    if (nilai >= 80) {
      kategori = 'A';
    } else if (nilai >= 60) {
      kategori = 'B';
    } else {
      kategori = 'C';
    }

    print("Mahasiswa: $nama | Nilai: $nilai | Kategori: $kategori");
  });
}
