// 1. Menerapkan Percabangan "if", "if-else", dan "if-else if"
/* void main() {
  // Tambahan kode 
  String test = "true";
  if (test == "true") {
    print("Kebenaran");
  }

  // String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");
} */

/*  Catatan: Penambahan kode if dapat membuat kode error jika dijalankan karena
    terjadi duplikasi variabel 'test'. Sehingga nama variabel harus diubah agar tidak
    terjadi duplikasi atau deklarasi test sebelumnya dapat di comment.
*/

// 2. Menerapkan Perulangan "while" dan "do-while"
/* void main() {
  int counter = 0; // dekalrasi dan inisialisasi
  while (counter < 33) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 77);
} */

/* Catatan : Penambahan kode do-while tidak menimbulkan error karena tidak ada
   duplikasi variabel. Saat dijalankan kode akan mencetak baris kode while  untuk mencetak angka
   0 - 32, kemudian dilanjutkan dengan do-while untuk mencetak angka 33 - 76. 
*/

// 3. Menerapkan Perulangan "for" dan "break-continue"
/* void main() {
  for(int index = 0; index < 27; index++) {
    if (index == 21) break; // menghentikan perulangan jika index bernilai 21
    else if (index > 1 && index < 7) continue; // melewati perulangan jika index bernilai antara 1 - 7
    print(index);
  }
} */

/* Catatan : Saat dijalankan kode akan mencetak angka 0 - 20, namun
   angka 2 - 6 dilewati dan perulangan berhenti sebelum menceat angka 21.
*/

/*  Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. 
    Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
*/

void main() {
  String nama = "Alvi Choirinnikmah";
  String nim = "2341760191";

  print("Bilangan prima dari 0 sampai 201: ");

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i adalah bilangan prima - $nama ($nim)");
    }
  }
}

// Fungsi untuk memeriksa apakah sebuah bilangan adalah bilangan prima
bool isPrima(int angka) {
  if (angka < 2) return false;
  for( int i = 2; i <= angka ~/2; i++) {
    if (angka %i == 0) return false;
  }
  return true;
}