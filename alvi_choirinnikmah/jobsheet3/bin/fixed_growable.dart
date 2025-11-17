/* void main() {
  // Fixed List
  var fixedList = List<int>.filled(3, 0); // panjang 3, semua nilai awal 0
  fixedList[0] = 10;
  fixedList[1] = 20;
  fixedList[2] = 30;
  print("Fixed List: $fixedList");

  // Growable List
  var growableList = [1, 2, 3];
  growableList.add(4);
  growableList.remove(2);
  print("Growable List: $growableList");
} */

/* void main() {
  var angka = <int>{1, 2, 3, 3, 4};
  print("Set angka: $angka"); // output: {1, 2, 3, 4}

  var setA = {1, 2, 3};
  var setB = {3, 4, 5};
  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}");
} */

/* void main() {
  var mahasiswa = {
    "nim" : "2341760191",
    "nama" : "Alvi Choirinnikmah",
    "jurusan" : "Sistem Informasi Bisnis"
  };

  print("Nama: ${mahasiswa["nama"]}");
  mahasiswa["angkatan"] = "2023"; // tambah entry baru
  print(mahasiswa);
} */

/* void main() {
  var mahasiswa = ("Alvi Choirinnikmah", 19, true);
  print(mahasiswa);          
  print(mahasiswa.$1);       
  print(mahasiswa.$2);     
  print(mahasiswa.$3);  

  // Named Record
  var mhs = (nama: "Alvi Choirinnikmah", umur: 19);
  print("Nama: ${mhs.nama}, Umur: ${mhs.umur}");
} */

/* void sapa(String nama, [String? salam]) {
  print("Halo $nama, ${salam ?? 'Selamat datang!'}");
}

void main() {
  sapa("Alvi Choirinnikmah");
  sapa("Alvi", "Selamat Pagi!");
} */

/* void main() {
  var list = [1, 2, 3];
  list.forEach((angka) {
    print("Angka: $angka");
  });
} */

/* void main() {
  var x = 10;
  void tampil() {
    print(x); // bisa akses x walaupun x ada di luar
  }
  tampil();
} */

/* Function buatCounter() {
  var hitung = 0;

  return () {
    hitung++;
    return hitung;
  };
} */

/* void main() {
  var counter = buatCounter();
  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3
  print(counter()); // 4
  print(counter()); // 5
}*/

// Struktur if - else
/* void main() {
  int nilai = 78;

  if (nilai >= 75) {
    print("Lulus");
  } else {
    print("Tidak lulus");
  }
} */

// Struktur switch
/* void main() {
  String hari = "Senin";

  switch (hari) {
    case "Senin":
      print("Hari pertama kerja");
      break;
    case "Jumat":
      print("Hari akhir pekan sudah dekat");
      break;
    default:
      print("Hari biasa");
  }
} */

// List adalah koleksi data yang terurut dan dapat diakses menggunakan indeks
/* import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  numbers.add(6); // menambahkan elemen
  numbers.addAll([7, 8]); // Menggabungkan List
  numbers.remove(8);
  print(numbers); // Menampilkan semua yang ada pada variabel numbers
  print(numbers[5]); // Mengakses elemen berdasarkan indeks
  numbers.forEach((num) => print(num)); // Cetak semua elemen

  // Panggil fungsi Bilangan Genap
  print("Bilangan Genap : ");
  printBilanganGenap(numbers);
}

void printBilanganGenap(List<int> numbers) {
  for (var num in numbers) {
    if (num % 2 == 0) {
      print(num);
    }
  }
} */

/* void main () {
  // Deklarasi 
  Map<String, int> ageMap = {'Alice': 25, 'Bob': 30};

  ageMap['Charlie'] = 35; // Menambahkan pasangan kunci - nilai
  ageMap.remove('Alice'); // Menghapus pasangan berdasarkan kunci 
  print(ageMap['Bob']); // Mengakses nilai berdasarkan kunci
  ageMap.forEach((key, value) => print('$key is $value years old.')); // Iterasi Map 
  printLebihTua(ageMap, 30);
}

void printLebihTua(Map<String, int> map, int age) { 
  map.forEach((key, value) { 
     if (value > age) { 
         print('$key is older than $age.'); 
      } 
   }
  ); 
} */

void main() {
  Set<int> uniqueNumbers = {1, 2, 3, 4};

  uniqueNumbers.add(5); // Menambahkan elemen 
  uniqueNumbers.remove(2); // Menghapus elemen
  print(uniqueNumbers.contains(3)); // Memeriksa apakah elemen ada
  uniqueNumbers.forEach((num) => print(num)); // Iterasi Set
  printData(uniqueNumbers);
}

void printData(Set<int> numbers) { 
   numbers.forEach(
      (num) => print(num)
   ); 
}
