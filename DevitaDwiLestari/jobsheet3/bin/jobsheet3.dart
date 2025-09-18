import 'dart:io';

import 'package:jobsheet3/jobsheet3.dart' as jobsheet3;

void main(List<String> arguments) {
  // print('Hello world: ${jobsheet3.calculate()}!');

  //Belajar fixed LIst
  //var list = List<int>.filled(5,0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 13;
  // list[3] = 33;
  // list[4] = 23;
  // // list[5] = 60; list tidak dibutuhkan karena kita hnya menyediakan 5 tempat
  // print("Data dalam list = $list ");

  // list fixed list menggunakan perulangan 
  // for (int i = 0; i <= 4; i++){
  //   stdout.write('Masukkan data ke-$i : '); 
  //   var input = int.tryParse(stdin.readLineSync()?? '') ?? 0;
  //   list[i] = input!;
  // }
  // print("Data dari list setelah input = $list");

  // Growable list
  // var grow = [];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);

  // print("Data di dalam list = $grow");

  // for (var i = 0; i <= 4; i++) {
  //     stdout.write("Data List ke-$i : ");
  //     var input = stdin.readLineSync();
  //     grow.add(int.parse((input == null || input.isEmpty) ? "0" : input));
  //     }
  //     print("Data dalam list = $grow");

  // var grow = [];
  //   for (var i = 0; i <= 4; i++) {
  //     stdout.write("Masukkan list ke-$i : ");
  //     var input = stdin.readLineSync();
  //     if(input != null) {
  //       grow.add(input);
  //       print("Data data index ke: $i = ${grow[i]}");
  //     }
  //   }
  //   print("Data dalam list = $grow");

  // Belajar Set
  // var angka = <int> {1,2,3,4,5};
  // print("Datanya adalah ${angka.elementAt(3)} ");

  // // union adalah gabungan
  // var angka2= <int> {4,5,6,7,8};
  // print("Data union adalah = ${angka.union(angka2)}");
  // // intersection adalah angka yang sama
  // print("Data intersection adalah = ${angka.intersection(angka2)}");

  // Belajar Map
  // var biodata = {
  //   "nim" : "2341760002",
  //   "nama" : "Devita",
  //   "jurusan" : "Teknologi Informasi",
  //   //"nama" : "Dwi" kereplace
  // };
  // biodata["angkatan"] = "2023"; //menambahkan data
  // print("Biodata mahasiswa $biodata");
  // // Cetak nama saja
  // print("Biodata mahasiswa dengan nama = ${biodata['nama']}");

  // Record (Mengumpulkan data dalam satu ringkasan)
  // var mahasiswa = ("Luqman", 40, true);
  // print("Ini adalah data Pak Luqman $mahasiswa");
  // print("Mahasiswa = ${mahasiswa.$1}");

  // var bio = (nama : "Devita", umur:20, gender:true);
  // print("Biodata sata $bio");
  // print("Nama saya ${bio.nama}");

  // tampil("Devita", 20, "Sidoarjo");
  // tampil("Luqman", 21);

  // Anonymus function
  var nilai = [90, 80, 70, 100];
  nilai.forEach((angka){
    print("Nilai = $angka");
  });
}

// function parameter
// void tampil(String nama, int umur, [String? alamat]){
//   print("Nama : $nama");
//   print("Umur : $umur");
//   if (alamat != null){
//     print("Alamat : $alamat");
//   }
// }