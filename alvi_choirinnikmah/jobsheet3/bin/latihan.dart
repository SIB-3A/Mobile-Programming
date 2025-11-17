// 1. Eksperimen Tipe Data List
/* void main() {
    var list = [1, 2, 3];
    assert(list.length == 3); // Memastikan panjang list adalah 3
    assert(list[1] == 2); // Memastikan elemen kedua adalah 2
    print(list.length); 
    print(list[1]);

    list[1] = 1;
    assert(list[1] == 1);
    print(list[1]);
} */

/*  Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. 
    Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.
*/

/* void main() {
    final List<String?> list= List.filled(5, null);
    list[1] = "Alvi Choirinnikmah";
    list[2] = "2341760191";

    print(list);
} */

// 2. Eksperimen Tipe Data Set
/* void main() {
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);

    // Tambahkan kode
    var names1 = <String>{};
    Set<String> names2 = {};
    var names3 = <String>{};

    // Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll().
    names1.add("Alvi Choirinnikmah");
    names1.addAll(["2341760191"]);

    names2.add("Alvi Choirinnikmah");
    names2.addAll(["2341760191"]);

    names3.add("Alvi Choirinnikmah");
    names3.addAll(["2341760191"]);

    print(names1);
    print(names2);
    print(names3);
} */

// 3. Eksperimen Tipe Data Maps
/* void main() {
  var gifts = {
    // key : value
    'first': 'partridge',
    'second': 'turtledove',
    'fifth': 1,
  };

  var novleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(novleGases);

  // Tambahkan kode
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledove';
  gifts['fifth'] = 'golden ring';
  mhs1['nama'] = 'Alvi Choirinnikmah';
  mhs1['NIM'] = '2341760191';

  var mhs2 = Map<int, String>();
  novleGases[2] = 'helium';
  novleGases[10] = 'neon';
  novleGases[18] = 'argon';
  mhs2[1] = 'Alvi Choirinnikmah';
  mhs2[2] = '2341760191';

  print(gifts);
  print(novleGases);
  print(mhs1);
  print(mhs2);
} */

// 4. Eksperimen Tipe Data List: Spread dan Control-flow Operators
void main() {
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    print(list);
    print(list2);
    print(list2.length);

    // Tambahkan kode
    var list1 = [1, 2, null];
    print(list1);
    var list3 = [0, ...?list1];
    print(list3);
    print(list3.length);

    // Menambahkan variabel list berisi NIM menggunakan Spread Operator
    var nim = [2, 3, 4, 1, 7, 6, 0, 1, 9, 1];
    var combinedList = [...list3, ...nim];
    print(combinedList);
    print(combinedList.length);
}
