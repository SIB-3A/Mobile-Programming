import 'dart:io';

void main (List<String> arguments) {
//   var Mahasiswa = <String> []; // 1. Daftar nama mahasiswa Growable List
//   var Jumlah = 5;

//   for (var i = 0; i < Jumlah; i++) {
//   stdout.write("Nama Mahasiswa ke-${i + 1}: ");
//   var input = stdin.readLineSync();
//   if (input !=null && input.isNotEmpty) {
//     Mahasiswa.add(input);
//   }
// }
// print("\nData Dalam List = $Mahasiswa");
// print("Jumlah Data Mahasiswa = ${Mahasiswa.length}");

// 2. Union dan Intersection
// var set1 = <String> {};
// var set2 = <String> {};

// stdout.write("Set 1: ");
//   var n1 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
//   for (var i = 0; i < n1; i++) {
//     stdout.write("Set 1 ke-${i + 1}: ");
//     var input = stdin.readLineSync();
//     if (input != null && input.isNotEmpty) {
//       set1.add(input);
//     }
//   }

//   stdout.write("Set 2: ");
//   var n2 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
//   for (var i = 0; i < n2; i++) {
//     stdout.write("Set 2 ke-${i + 1}: ");
//     var input = stdin.readLineSync();
//     if (input != null && input.isNotEmpty) {
//       set2.add(input);
//     }
//   }

//   print("Set 1 = $set1");
//   print("Set 2 = $set2");
//   print("Data Union = ${set1.union(set2)}");
//   print("Data Intersection = ${set1.intersection(set2)}\n");

// 3. Map Data Barang
// var barang = <String, Map<String, dynamic>>{
// "B001": {"nama": "Lampu", "harga": 100000},
// "B002": {"nama": "Buku", "harga": 90000},
// "B003": {"nama": "Gelas", "harga": 50000},
// };
// print("Data Barang:");
// barang.forEach((kode, data) {
//   print("Kode: $kode, Nama: ${data['nama']}, Harga: ${data['harga']}");
//   });

  // 4. Function Closure Diskon Bertingkat
  Function closureDiskon() {
    var diskon = 0;
    return () {
      diskon += 5;
      return diskon;
      };
  }
  var hitungDiskon = closureDiskon();
  print("Pemanggilan 1, Diskon = ${hitungDiskon()}%");
  print("Pemanggilan 2, Diskon = ${hitungDiskon()}%");
  print("Pemanggilan 3, Diskon = ${hitungDiskon()}%");
  print("Pemanggilan 4, Diskon = ${hitungDiskon()}%");
}