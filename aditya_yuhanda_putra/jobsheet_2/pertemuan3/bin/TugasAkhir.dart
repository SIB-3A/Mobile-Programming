import 'dart:io';

void main() {
  // Map untuk menyimpan data mahasiswa
  Map<String, String> hasil = {};

  stdout.write("Masukkan jumlah mahasiswa: ");
  String? jumlah = stdin.readLineSync();

  // pengecekan input jumlah mahasiswa dengan if else dan null safety
  int? totalMahasiswa = int.tryParse(jumlah ?? '');
  if (totalMahasiswa == null || totalMahasiswa <= 0) {
    print("Jumlah mahasiswa tidak valid. Stop disini.");
    return;
  }

  // for loop untuk input data mahasiswa sesuai jumlah mahasiswa
  for (int i = 1; i <= totalMahasiswa; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai ujian $nama: ");
    int? nilai = int.tryParse(stdin.readLineSync() ?? '');

    if (nilai == null) {
      print("Nilai tidak valid, akan diberi kategori C.");
      hasil[nama ?? "Mahasiswa $i"] = 'C';
      continue;
    }

    // tentukan kategori dengan logika switch case
    String kategori;
    switch (nilai ~/ 10) {
      case 10: // nilai 100
      case 9: // 90–99
      case 8: // 80–89
        kategori = 'A';
        break;
      case 7: // 70–79
      case 6: // 60–69
        kategori = 'B';
        break;
      default: // < 60
        kategori = 'C';
    }

    // simpan data ke dalam map
    hasil[nama ?? "Mahasiswa $i"] = kategori;
  }

  // tampilkan hasil akhir
  print("\nDaftar Mahasiswa dan Kategori Kelulusan:");
  for (var entry in hasil.entries) {
    print("${entry.key} : ${entry.value}");
  }
  print("TUGAS AKHIR ADITYA YUHANDA PUTRA");
}
