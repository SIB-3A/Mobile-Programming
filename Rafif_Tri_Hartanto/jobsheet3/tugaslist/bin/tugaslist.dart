import 'dart:io';

// 1. Program untuk menyimpan daftar nama mahasiswa dengan Growable List
void soal1() {
  List<String> mahasiswa = [];

  stdout.write("Masukkan jumlah mahasiswa: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    stdout.write("Nama mahasiswa ke-${i + 1}: ");
    String nama = stdin.readLineSync()!;
    mahasiswa.add(nama);
  }

  print("\nDaftar mahasiswa: $mahasiswa");
  print("Jumlah mahasiswa: ${mahasiswa.length}");
}

// 2. Program untuk menghitung union & intersection dari dua set
void soal2() {
  stdout.write("\nMasukkan jumlah elemen set A: ");
  int nA = int.parse(stdin.readLineSync()!);
  Set<String> setA = {};

  for (int i = 0; i < nA; i++) {
    stdout.write("Elemen set A ke-${i + 1}: ");
    setA.add(stdin.readLineSync()!);
  }

  stdout.write("\nMasukkan jumlah elemen set B: ");
  int nB = int.parse(stdin.readLineSync()!);
  Set<String> setB = {};

  for (int i = 0; i < nB; i++) {
    stdout.write("Elemen set B ke-${i + 1}: ");
    setB.add(stdin.readLineSync()!);
  }

  Set<String> unionSet = setA.union(setB);
  Set<String> intersectionSet = setA.intersection(setB);

  print("\nSet A: $setA");
  print("Set B: $setB");
  print("Union: $unionSet");
  print("Intersection: $intersectionSet");
}

// 3. Program menggunakan Map untuk data barang
void soal3() {
  Map<String, Map<String, dynamic>> barang = {};

  stdout.write("\nMasukkan jumlah barang: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    stdout.write("Kode barang: ");
    String kode = stdin.readLineSync()!;

    stdout.write("Nama barang: ");
    String nama = stdin.readLineSync()!;

    stdout.write("Harga barang: ");
    int harga = int.parse(stdin.readLineSync()!);

    barang[kode] = {"nama": nama, "harga": harga};
  }

  print("\nData Barang:");
  barang.forEach((kode, detail) {
    print("Kode: $kode, Nama: ${detail['nama']}, Harga: ${detail['harga']}");
  });
}

// 4. Function closure untuk diskon bertingkat
Function soal4() {
  double diskon = 0;

  return (double harga) {
    diskon += 5; // setiap panggil tambah 5%
    double potongan = harga * (diskon / 100);
    double hargaAkhir = harga - potongan;

    print("Diskon: $diskon% → Harga akhir: Rp${hargaAkhir.toStringAsFixed(0)}");
    return hargaAkhir;
  };
}

void main() {
  print("=== Soal 1 ===");
  soal1();

  print("\n=== Soal 2 ===");
  soal2();

  print("\n=== Soal 3 ===");
  soal3();

  print("\n=== Soal 4 ===");
  var hitungDiskon = soal4();
  hitungDiskon(100000.0); // panggilan pertama
  hitungDiskon(100000.0); // panggilan kedua
  hitungDiskon(100000.0); // panggilan ketiga
}
