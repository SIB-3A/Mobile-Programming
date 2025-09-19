import 'dart:ffi';
import 'dart:io';
import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  // var list = List<int>.filled(5, 0);
  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 30;
  // list[3] = 40;
  // list[4] = 50;
  // list[5] = 60; list hanya 5, output list menjadi 0
  // print("Data dalam List = $list");

  // Perulangan Input List
  // for (int i = 0; i <= 4; i++) {
  //   stdout.write('Masukkan data ke-$i: ');
  //   var input = int.tryParse(stdin.readLineSync()?? '')?? 0;
  //   list[i] = input!;
  // }
  // print("Data dari list input = $list");

  //Growable List
  // var Grow = [];
  // Grow.add(20);
  // Grow.add(30);
  // Grow.add(40);
  // Grow.add(50);
  // Grow.remove(40);
  // Grow.add(10);

  // print("Data di dalam list = $Grow");

  // Perulangan Growable List
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   Grow.add(int.parse((input == null || input.isEmpty) ? "0" : input));
  //   }
  //   print("Data dalam list = $Grow");

  // Perulangan Growable nama
  // var Grow = [];

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   if(input != null) {
  //     Grow.add(input);
  //      print("Data dalam index ke = $i ${Grow[i]}");
  //   }
  // }
  // print('Data dalam list = $Grow');

  // Set
    // var angka = <int> {1,2,3,3,4,5}; //double tetap 1 data
    // print("Datanya adalah : ${angka.elementAt(1)}"); //memanggil data tertentu

    // var angka2 = <int> {4,5,6,7,8};
    // print("Data Union adalah = ${angka2.union(angka2)}");
    // print("Data intersection adalah = ${angka.intersection(angka2)}");

    // Map
    // var biodata = {
    //   "nim" : "2341760064",
    //   "nama": "Josephine",
    //   "Jurusan" : "Teknologi Informasi",
    //   "nama" : "Jose" // replace
    // };
    // // biodata['Nama'] = "2023"; //ke replace
    // print("Biodata Mahasiswa $biodata");
    // print("Biodata Mahasiswa = ${biodata['nama']}");

    // Record
    // var Mahasiswa = ("Pak Luqman", 40, true);
    // print("Data Pak Luqman : $Mahasiswa");
    // print("Mahasiswa = ${Mahasiswa.$1}");

    // var bio = (nama : "Josephine", umur : 20, gender:true);
    // print("Biodata saya $bio");
    // print("nama saya ${bio.nama}");

    // tampil("Jose", 20, "Malang");
    // tampil("Luqman", 21);

    // Anonymous Function
    var nilai = [90, 80, 70, 100];
    nilai.forEach((angka){
    print("Nilai = $angka");

});
}
// Function Parameter
// void tampil(String nama, int umur, [String? alamat]) {
//   print("Nama : $nama");
//   print("Umur : $umur");
//   if (alamat != null) {
//     print("Alamat : $alamat");
//   } else {
//     print("Alamat : -");
//   }
// }
