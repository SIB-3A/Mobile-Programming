import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  // var list = List<int>.filled(5, 0);

  // // Perulangan untuk mengisi data ke dalam list
  // print("Mengisi data ke dalam list");
  // for (var i = 0; i < list.length; i++) {
  //   stdout.write("Masukkan data ke index ke-$i : ");
  //   var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  //   list[i] = input;
  // }
  // // list[0] = 10;
  // // list[1] = 20;
  // // list[2] = 13;
  // // list[3] = 33;
  // // list[4] = 23;
  // // list[5] = 44; // akan error karena index melebihi batas
  // print("Data dari list = $list ");

  // Growable List for Dart
  // var grow = [];
  // for (var i = 0; i < 5; i++) {
  //   stdout.write("Masukkan data index ke-$i: ");
  //   var input = stdin.readLineSync() ?? '0';
  //   if (input != null) {
  //     grow.add(input);
  //     print("Data index ke-$i: ${grow[i]}");
  //   }
  // }
  // print("Data dalam list: $grow");

  // var grow = [10];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);
  // stdout.writeln("Data dari growable list = $grow");

  // Set in Dart
  // var angka = <int>{1, 2, 3, 3, 4, 5};
  // stdout.writeln("Data dari set = $angka");
  // print("Elemen ke-2 : ${angka.elementAt(1)}");

  // var angka2 = {4, 5, 6, 7, 8};
  // print("Data Union adalah : ${angka.union(angka2)}");
  // print("Data Intersection adalah : ${angka.intersection(angka2)}");

  // Map in Dart
  // var biodata = {
  //   "nim": "2341760050",
  //   "nama": "Aditya Yuhanda Putra",
  //   "jurusan": "Teknologi Informasi",
  //   "nama": "Mauliddina Fuji",
  // };
  // // biodata['angkatan'] = "2023";
  // print("Biodata Mahasiswa : $biodata");
  // print("Nama : ${biodata['nama']}");

  // Record in Dart
  // var record = ("Aditya", 21, true);;
  // print("ini data Aditya = $record");
  // print("Elemen ke-1 dari record = ${record.$1}");

  // var bio = (nama:"Mauliddina", umur:18, gender:false);
  // print("ini data Mauliddina = $bio");
  // print("Nama : ${bio.nama}");

  // Function in Dart
  // tampil("Aditya", 21, "Malang");
  // tampil("Mauliddina", 18);

  // Anonymous Function in Dart
  var nilai = [90, 80, 70, 100];
    nilai.forEach((angka){
      print("Nilai = $angka");
    });
}

// Function in Dart
// void tampil(String nama, int umur, [String? alamat]) {
//   print("Nama : $nama");
//   print("Umur : $umur");
//   if (alamat != null) {
//     print("Alamat : $alamat");
//   } else {
//     print("Alamat : -");
//   }
// }
