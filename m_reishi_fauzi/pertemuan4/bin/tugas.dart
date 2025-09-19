import 'dart:io';

void main() {
  // Growable List nama mahasiswa dan tampilkan jumlah datanya
  // var mahasiswa = <String>[];

  // for (int i = 0; i < 3; i++) {
  //   stdout.write("Masukkan nama mahasiswa ke-${i + 1}: ");
  //   String? input = stdin.readLineSync();
  //   if (input != null && input.isNotEmpty) {
  //     mahasiswa.add(input);
  //   }
  // }

  // print("Daftar mahasiswa: $mahasiswa");
  // print("Jumlah mahasiswa = ${mahasiswa.length}");

  //union dan intersection dari input tipe data string
  var set1 = <String>{};
  var set2 = <String>{};

  // input set1
  // for (int i = 0; i < 3; i++) {
  //   stdout.write("Masukkan data Set1 ke-${i + 1}: ");
  //   set1.add(stdin.readLineSync() ?? "");
  // }

  // input set2
  // for (int i = 0; i < 3; i++) {
  //   stdout.write("Masukkan data Set2 ke-${i + 1}: ");
  //   set2.add(stdin.readLineSync() ?? "");
  // }

  // print("Set1 = $set1");
  // print("Set2 = $set2");
  // print("Union = ${set1.union(set2)}");
  // print("Intersection = ${set1.intersection(set2)}");

  //MAP UNTUK DATA BARANG MIN 3
  //  var barang = {
  //   'BRG1': {'nama': 'Laptop Thinkpad T470P', 'harga': 10000000},
  //   'BRG2': {'nama': 'Mouse Red Dragon', 'harga': 125000},
  //   'BRG3': {'nama': 'Charger Original', 'harga': 300000},
  // };

  // print("Data barang:");
  // barang.forEach((kode, data) {
  //   print("Kode: $kode, Nama: ${data['nama']}, Harga: ${data['harga']}");
  // });

  //  FUNCTION CLOSURE DISKON BERTINGKAT 5%

  Function hitungDiskon = Diskon();
  print("1. Harga setelah diskon: Rp${hitungDiskon(100000)}");
  print("2. Harga setelah diskon: Rp${hitungDiskon(100000)}");
  print("3. Harga setelah diskon: Rp${hitungDiskon(100000)}");
  }

  Function Diskon() {
  int diskon = 0;
  return (int harga) {
    diskon += 5; 
    double potongan = harga * diskon / 100;
    return harga - potongan;
  };
}


  
