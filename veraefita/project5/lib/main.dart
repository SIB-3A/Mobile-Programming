// import 'package:flutter/material.dart';

// void main() {
//   runApp(const sib3a());
// }

// class sib3a extends StatelessWidget {
//   const sib3a({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Row(
//             //jika menggunakan column maka subtitle akan berada di bawah tulisan flutternya haura, jika menggunakan row, maka tulisan subtitle berada di samping tulisan flutternya haura
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Icon(
//                 Icons.account_circle,
//                 size: 48,
//                 color: Colors.white,
//               ), //icon bisa ditambahkan karena didalam array
//               const Text(
//                 'Flutternya vera',
//                 style: TextStyle(fontSize: 24, color: Colors.white),
//               ),
//               const Text(
//                 'Subtitle',
//                 style: TextStyle(fontSize: 14, color: Colors.white),
//               ),
//               const FlutterLogo(
//                 size: 48,
//                 style: FlutterLogoStyle.horizontal,
//                 textColor: Colors.white,
//               ),
//               Image.asset('assets/images/poltek.jpeg', width: 48, height: 48),
//             ],
//           ),
//           backgroundColor: Colors.purple,
//           // leading: const Icon(Icons.menu),
//           actions: const [Icon(Icons.search), Icon(Icons.settings)],
//         ),
//         body: Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           alignment: Alignment.center,
//           // color: Colors.red,
//           height: 250,
//           decoration: BoxDecoration(
//             gradient: const LinearGradient(
//               colors: [Colors.purple, Colors.deepPurple],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//             // color: Colors.blue,
//             border: Border.all(color: Colors.black),
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: const [
//               BoxShadow(
//                 color: Color.fromARGB(255, 23, 23, 23),
//                 offset: Offset(2, 2),
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text('You have ...'),
//               const Row(
//                 //jika menggunakan row, maka bintang bintangnya menyamping, jika menggunakan column maka bintang bintangnya berjajar kebawh
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.star, color: Colors.amber),
//                   Icon(Icons.star, color: Colors.amber),
//                   Icon(Icons.star, color: Colors.amber),
//                   Icon(Icons.star_half, color: Colors.amber),
//                   Icon(Icons.star_border, color: Colors.amber),
//                 ],
//               ),
//               ElevatedButton(onPressed: () {}, child: const Text('Klik here')),
//               TextButton(
//                 onPressed: () {
//                   print('Text button pressed');
//                 },
//                 child: const Text(
//                   'Text Button',
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//               OutlinedButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'Klik here',
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   print('Icon button pressed');
//                 },
//                 icon: const Icon(Icons.favorite, color: Colors.red),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {}, //untuk memberi action next or back or something
//           tooltip: 'ini tombol',
//           child: const Icon(Icons.add),
//         ),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: const [
//               DrawerHeader(
//                 decoration: BoxDecoration(color: Colors.blue),
//                 child: Text(
//                   'Drawer Header',
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//               ),
//               ListTile(leading: Icon(Icons.message), title: Text('Messages')),
//               ListTile(
//                 leading: Icon(Icons.account_circle),
//                 title: Text('Profile'),
//               ),
//               ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.business),
//               label: 'Business',
//             ),
//             BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ProfilePage(),
    const CounterPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Counter"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

/// ======================
/// 1️⃣ Halaman Profil
/// ======================
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Mahasiswa")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FlutterLogo(size: 70),
              const SizedBox(height: 10),
              ClipOval(
                child: Image.asset(
                  'assets/images/poltek.jpeg', // ganti sesuai file kamu
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Vera Efita Hudi Putri',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'NIM: 2341760047',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                'Jurusan Teknologi Informasi',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.purple),
                  SizedBox(width: 8),
                  Text('veraefita05@email.com'),
                  SizedBox(width: 20),
                  Icon(Icons.phone, color: Colors.purple),
                  SizedBox(width: 8),
                  Text('0896-2606-5619'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// ======================
/// 2️⃣ Halaman Counter
/// ======================
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);
  void _decrement() => setState(() => _counter--);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Angka saat ini:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _increment, child: const Text('+')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: _decrement, child: const Text('-')),
                const SizedBox(width: 10),
                OutlinedButton(onPressed: _reset, child: const Text('Reset')),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        tooltip: 'Tambah angka',
        child: const Icon(Icons.add),
      ),
    );
  }
}
