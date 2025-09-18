import 'dart:io';

void main() {
  // // 1. Growable List Mahasiswa
  // var daftarMahasiswa = []; // membuat list yang bisa bertambah

  // print("Masukkan 3 nama mahasiswa:");

  // for (int i = 0; i < 3; i++) {
  //   stdout.write("Nama mahasiswa ke-${i + 1}: ");
  //   var nama = stdin.readLineSync() ?? '';
  //   daftarMahasiswa.add(nama); // menambahkan nama ke list
  // }

  // print("\nDaftar mahasiswa: $daftarMahasiswa");
  // print("Jumlah mahasiswa: ${daftarMahasiswa.length}");

  // // 2. menghitung union & intersection dari dua set yang diinput manual menggunakan data string
  // var set1 = <String>{}; 
  // var set2 = <String>{}; 

  // // Input elemen set pertama
  // print("Masukkan 3 elemen untuk set pertama:");
  // for (int i = 0; i < 3; i++) {
  //   stdout.write("Set1 elemen ke-${i + 1}: ");
  //   var elemen = stdin.readLineSync() ?? '';
  //   set1.add(elemen); // menambahkan ke set1
  // }

  // // Input elemen set kedua
  // print("\nMasukkan 3 elemen untuk set kedua:");
  // for (int i = 0; i < 3; i++) {
  //   stdout.write("Set2 elemen ke-${i + 1}: ");
  //   var elemen = stdin.readLineSync() ?? '';
  //   set2.add(elemen); // menambahkan ke set2
  // }

  // // Menampilkan union & intersection
  // print("\nUnion (gabungan kedua set): ${set1.union(set2)}");
  // print("Intersection (elemen yang sama): ${set1.intersection(set2)}");

  // // 3. Membuat Map barang
  // var barang = {
  //   "B001": {"nama": "Pensil", "harga": 2000},
  //   "B002": {"nama": "Buku Tulis", "harga": 5000},
  //   "B003": {"nama": "Penghapus", "harga": 1500},
  // };

  // // Menampilkan semua data barang
  // print("Daftar barang:");
  // barang.forEach((kode, info) {
  //   print("$kode: ${info['nama']} - Rp${info['harga']}");
  // });

  // 4. function closure yang menghitung diskon bertingkat
  int diskon = 0; 

  int Function() tambahDiskon = () {
    diskon += 5; // setiap dipanggil, diskon bertambah 5%
    return diskon;
  };

  print("Diskon pertama: ${tambahDiskon()}%"); 
  print("Diskon kedua: ${tambahDiskon()}%");   
  print("Diskon ketiga: ${tambahDiskon()}%");  
}
