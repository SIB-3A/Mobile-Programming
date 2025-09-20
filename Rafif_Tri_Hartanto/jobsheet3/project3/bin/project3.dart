import 'dart:ffi';
import 'dart:io';
import 'dart:js_interop';

import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //  fixed list
  // var list = List<int>.filled(5, 0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  // print("Data dari list = $list");

  // for list
  // for (int i=0; i<=list.length; i++) {
  //   stdout.write("Masukkan data ke-$i : ");
  //   list[i] = int.parse(stdin.readLineSync()!);
  //   print("Isi data $list");
  //   if (i == list.length - 1) {
  //     break;
  //   }   
  // }

  // growable list
  // var grow = [60];
  // grow.add(70);
  // grow.remove(60);
  // print("data dari growable list = $grow");

  // for growable list
  // var grow = <int>[];
  // for (int i=0; i<=5; i++) {
  //   stdout.write("Masukkan data : ");
  //   var input = int.parse(stdin.readLineSync()!);
  //   grow.add(int.tryParse( input.toString()) ?? 0);
  //   print("Isi data $grow");
       
  // }

  // growable list var
  // var grow = [];
  // for (var i=0; i<=5; i++) {
  //   stdout.write("Masukkan data : ");
  //   var input = stdin.readLineSync();
  //   if (input != null) {
  //     grow.add(input);
  //   }
  //   print("Isi data $grow");
  // }

  // // set
  // var set = <int>{1, 2, 3, 3, 4};
  //   // print (set);
  //   // memilih elemen tertentu
  //   print("Isi data ${set.elementAt(2)}");

  //   // mengabungkan 2 set
  //   var set2 = <int>{4, 5, 6};
  //   print("Gabungan 2 data set ${set.union(set2)}");

  //   // memilih irisan 2 set
  //   print("Iridan 2 data set ${set.intersection(set2)}");

  // // map
  // var biodata = {
  //   "nama" : "Andi",
  //   "alamat" : "Malang",
  // };
  // print("Biodata : $biodata");
  // print("Nama saya ${biodata['nama']}");
  // biodata['Hobby'] = "Membaca";
  // print("Biodata : $biodata");

  // records
  // var mahasiswa = ("Andi", 10, true);
  // print("Mahasiswa : ${mahasiswa}");
  // print("Nama : ${mahasiswa.$1}");

  // var biodata = (nama: "Budi", umur: 20, gender:true);
  // print("Biodata : ${biodata}");
  // print("Biodata : ${biodata.nama}");
  
  // // memanggil function
  // tampil("Rafif", 20, "Malang");
  // tampil("Luqman", 21);

  // anonymous function
  var nilai = [60, 70, 80, 90, 100];
  nilai.forEach((angka) {
    print("Nilai : $angka");
  });
}

// // function parameter
// void tampil(String nama, int umur, [String? alamat]) {
//   print("Nama : $nama");
//   print("Umur : $umur");
//   if (alamat != null) {
//     print("Alamat : $alamat");
//   } else {
//     print("Alamat : -");
//   }
// }
