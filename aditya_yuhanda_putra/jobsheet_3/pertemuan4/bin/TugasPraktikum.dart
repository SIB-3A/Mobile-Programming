import 'dart:io';

void main() {
  // 1. Growable List
  print("=== Tugas 1: Growable List ===");
  List<String> mahasiswa = [];

  stdout.write("Masukkan jumlah mahasiswa yang ingin diinput: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= jumlah; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();
    if (nama != null && nama.isNotEmpty) {
      mahasiswa.add(nama);
    }
  }

  print("Daftar Mahasiswa: $mahasiswa");
  print("Jumlah Data: ${mahasiswa.length}\n");


  // 2. Union & Intersection
  print("=== Tugas 2: Union & Intersection ===");
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};
  print("Set A: $setA");
  print("Set B: $setB");
  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}\n");

  // 3. Map Data Barang
  print("=== Tugas 3: Map Barang ===");
  Map<String, Map<String, dynamic>> barang = {
    "ITM01": {"nama": "Spion Bar End", "harga": 3000},
    "ITM02": {"nama": "Velg Cacing", "harga": 12000},
    "ITM03": {"nama": "LED Projector", "harga": 5000},
  };

  barang.forEach((kode, detail) {
    print("Kode: $kode, Nama: ${detail['nama']}, Harga: Rp${detail['harga']}");
  });
  print("");

  // 4. Closure Diskon Bertingkat
  print("=== Tugas 4: Closure Diskon ===");
  Function hitungDiskon = buatDiskon();
  print("Harga setelah diskon 1: Rp${hitungDiskon(10000)}");
  print("Harga setelah diskon 2: Rp${hitungDiskon(10000)}");
  print("Harga setelah diskon 3: Rp${hitungDiskon(10000)}");
}

// Closure untuk diskon bertingkat
Function buatDiskon() {
  int diskon = 0;
  return (int harga) {
    diskon += 5; 
    double potongan = harga * diskon / 100;
    return harga - potongan;
  };
}
