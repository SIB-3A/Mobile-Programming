import 'dart:io';
void main() {
  Map<String, int> dataMahasiswa = {};

  for (int i = 1; i <= 5; i++) {
    stdout.write("Nama Mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai ujian $nama: ");
    String? inputNilai = stdin.readLineSync();
    int nilai = int.tryParse(inputNilai ?? '') ?? 0;

    dataMahasiswa[nama ?? 'Mahasiswa_$i'] = nilai;
  }
    print("Nilai dan Kategori");

    dataMahasiswa.forEach((nama, nilai) {
    String kategori;

    switch (nilai ~/ 10) {
      case 10: // nilai 100
      case 9:  // nilai 90-99
      case 8:  // nilai 80-89
        kategori = "A";
        break;
      case 7:  // nilai 70-79
      case 6:  // nilai 60-69
        kategori = "B";
        break;
      default: // nilai < 60
        kategori = "C";
    }

    print("Nama: $nama | Nilai: $nilai | Kategori: $kategori");
  });
}