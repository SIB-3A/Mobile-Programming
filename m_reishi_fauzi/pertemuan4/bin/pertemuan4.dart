import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  //print('Hello world: ${pertemuan4.calculate()}!');

  //fixed list
  // var list = List<int>.filled(5, 0);
  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  //list[5] = 88;  (tidak bisa karena sudah fix hanya 5)

  // print("data dari list: $list");

  //fixed dengan input dan perulangan
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write('masukan data ke-$i : ');
  //   var input = int.tryParse(stdin.readLineSync()?? '');
  //   list[i] = input!;

  //   print("data dari list setelah di input: $list");
  // }  

  // var grow = [10];
  // grow.add(20);
  // grow.add(40);
  // grow.add(50);
  // grow.add(60);
  // grow.remove(50);
  // grow.add(80);

  // print('data dalam grow list: $grow');
  // var grow = [];

  // for (int i = 0; i <= 4; i++) {
  //   stdout.write('data list ke-$i : ');
  //   var input = stdin.readLineSync() ?? '0';
  //   if (input !=null) {

  //   }
  //   grow.add(input);
  //   print("Data index ke-$i: ${grow[i]}");
  //   print("Data dalam list: $grow");

  //   }


  // print('data dalam grow list: $grow');
//   var grow = [];

//   for (var i = 0; i <= 4; i++) {
//     stdout.write('data list ke-$i : ');
//     var input = stdin.readLineSync();
//     if(input !=null) {
//       grow.add(input);
//       print('data index ke: $i ${grow[i]}');
//     }
// }
// print('data dalam list: $grow'); 

// var angka = <int> {1,2,3,4,5};
// print('data nya adalah ${angka.elementAt(1)}');

// var angka2 = <int> {4,5,6,7,8,};
// print('data union adalah = ${angka.union(angka2)}');
// print('data intersection adalah = ${angka.intersection(angka2)}');

// var biodata = {
//   'nim' : '2341760012',
//   'nama' : 'fauzi',
//   'jurusan' : 'teknologi informasi',
//   'nama' : 'jaja',

// };
// //biodata['angkatan'] = '2023';  
// print('biodata mahasiswa $biodata ');
// print('biodata mahasiswa dengan nama = ${biodata['nama']}');

//record
// var mahasiswa = ('luqman', 40, true);
// print('ini data pak luqman: $mahasiswa');
// print('mahasiswa = ${mahasiswa.$1}');

// var bio = (nama: 'fauzi', umur: 20, gender: true);
// print('bio saya: $bio');
//   print('nama saya: ${bio.nama}');


//function parameter

// tampil('fauzi', 20, 'malang');
// tampil('luqman', 21);
// }

// void tampil (String nama, int umur, [String? alamat]) {
//   print('nama: $nama');
//   print('umur : $umur');
//   if (alamat != null) {
//     print('alamat : $alamat');
//   }else{
//     print('alamat: -');
//   }


  //anonymous function
  var nilai = [90, 80, 70, 100];
  nilai.forEach((angka) {
    print('nilai = $angka');
  });
}
