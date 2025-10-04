import 'package:flutter/material.dart';

void main() {
  runApp(const Sib3aApp());
}

class Sib3aApp extends StatelessWidget {
  const Sib3aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIB 3A - Alvi Choirinnikmah',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Scaffold & AppBar"),
          backgroundColor: Colors.teal,
          actions: const [
            Icon(Icons.search), // ikon di kanan
            Icon(Icons.settings),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.message), title: Text('Messages')),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // digunakan untuk mengatur posisi vertikal
            children: [
              const Text("Hello World!"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(Icons.star, color: Colors.amber, size: 40),
                  Icon(Icons.star, color: Colors.amber, size: 40),
                  Icon(Icons.star, color: Colors.amber, size: 40),
                  Icon(Icons.star, color: Colors.amber, size: 40),
                  Icon(Icons.star, color: Colors.amber, size: 40),
                ],
              ),
              // Tambahkan Container disini
              /* Container( // tidak bisa dijadikan const karena ada properti yang nilainya berubah-ubah
                width: 200,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Dasar Widget Container"),
                ),
              ), */
              /* Container(
                margin: const EdgeInsets.all(20), // jarak dari widget lain
                padding: const EdgeInsets.all(10), // jarak dari border
                color: Colors.amber,
                child: const Text("Dasar Widget Container dengan Margin dan Padding", style: TextStyle(color: Colors.white)),
              ), */
              /* Container(
                width: 400,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 3),
                )
              ), */
              Container(
                width: 400,
                height: 250,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.teal, Colors.tealAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)), // border radius 20
               ),
                child: const Center(
                  child: Text("Saya Sedang Belajar Dasar Widget Gradient Container", style: TextStyle(color: Colors.white)),
                ),
              ),
              const Text("Saya Sedang Belajar Dasar Widget Pada Flutter"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}