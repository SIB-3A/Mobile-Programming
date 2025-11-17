A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Materi Dart Programming Introduction

Dart adalah bahasa pemrograman yang open source dan general
purpose. Dart dikembangkan oleh Google dan ditujukan untuk
membuat aplikasi multiplatform: mobile, desktop dan web.

Mengapa Dart?
• Bahasa pemrograman yang fleksibel
• Project open-source
• Flutter - Angular
• Dukungan tools yang lengkap
• Mudah dipelajari dan bagus sebagai first language

Karakteristik Dart
• Statically typed: definisi variabel dibutuhkan sebelum digunakan.
• Type inference: definisi tipe data secara eksplisit tidak diperlukan.
• String interpolation: penyisipan variable ke dalam String tanpa concatenation.
• Multi-paradigm: Mendukung paradigma Object Oriented Programming dan
Functional Programming

📘 Dart Fundamental

1. 🗒️ Comments
Komentar digunakan untuk memberikan penjelasan pada kode agar mudah dipahami oleh programmer. Komentar tidak akan dieksekusi oleh program.
// untuk komentar satu baris
/* ... */ untuk komentar lebih dari satu baris

2. 💡 Variables
Variabel digunakan untuk menyimpan data. Nilai variabel dapat berubah selama program berjalan.

3. 🔒 Constants & Final
final: Nilainya hanya bisa ditetapkan sekali, tetapi dapat ditentukan saat runtime.
const: Nilainya bersifat konstan dan harus diketahui pada saat compile time.

4. 🔢 Data Types
Dart memiliki beberapa tipe data dasar, yaitu:
- int → bilangan bulat
- double → bilangan desimal
- String → teks
- bool → true/false
- List → kumpulan data (array)
- Map → pasangan key-value

5. 🧮 Numbers
Dart membedakan angka menjadi dua jenis:
- int: untuk bilangan bulat
- double: untuk bilangan pecahan

6. Strings
String digunakan untuk menyimpan teks.
Dapat dibuat dengan tanda kutip tunggal (') atau ganda (").

7. Booleans

Tipe data boolean hanya memiliki dua nilai: true atau false.
Digunakan untuk logika dan kondisi.

8. Operators
Operator digunakan untuk melakukan operasi pada nilai atau variabel.

9. ⚠️ Exceptions
Exception digunakan untuk menangani kesalahan agar program tidak berhenti secara tiba-tiba.

Null Safety
Fitur Null Safety mulai didukung oleh Dart sejak versi 2.12.
Fitur ini mencegah terjadinya Null Pointer Exception (NPE) — yaitu kesalahan yang muncul saat kita mencoba mengakses variabel yang bernilai null tanpa sengaja.

💬 Penjelasan
- Non-nullable → variabel tidak boleh bernilai null dan harus memiliki nilai.
- Nullable → variabel dapat bernilai null, dengan menambahkan tanda ? setelah tipe data.

Catatan:
Simbol $ dalam Dart digunakan untuk interpolasi string, yaitu cara menyisipkan nilai variabel atau ekspresi ke dalam string secara langsung.
- $variabel → untuk menampilkan nilai variabel.
- ${ekspresi} → untuk menampilkan hasil ekspresi (operasi, fungsi, dsb).