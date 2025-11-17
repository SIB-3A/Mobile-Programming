import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileCounterApp());
}

class MyProfileCounterApp extends StatelessWidget {
  const MyProfileCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
      ),
      home: const ProfilePage(),
    );
  }
}

// ---------------- Halaman Profil ----------------

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // background gradasi tetap full
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pink],
            begin: Alignment.bottomRight,
            end: Alignment.bottomLeft,
          ),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          // biar kalau konten agak tinggi, bisa di-scroll
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9, // lebar 90% layar
            margin: const EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              color: Colors.red.shade700,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ---------------- Header ----------------
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: const Center(
                    child: Text(
                      'Profil Mahasiswa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26, // H2 size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // ---------------- Isi Profil ----------------
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const FlutterLogo(size: 40),
                      const SizedBox(height: 10),
                      const CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/izzatir.png'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Izzatir Rofi’ah',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // ---------------- Table Biodata ----------------
                      SizedBox(
                        width: 280,
                        child: Table(
                          columnWidths: const {
                            0: IntrinsicColumnWidth(),
                            1: FixedColumnWidth(10),
                            2: FlexColumnWidth(),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: const [
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text('NIM',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text(':',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text('2341760010',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text('Jurusan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text(':',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text('Teknologi Informasi',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text('Program Studi',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text(':',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                                child: Text('D4 Sistem Informasi Bisnis',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade900,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 8),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CounterPage()),
                          );
                        },
                        child: const Text('Ke Halaman Counter'),
                      ),
                    ],
                  ),
                ),

                // ---------------- Footer ----------------
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.red.shade900,
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.email, color: Colors.white, size: 18),
                      SizedBox(width: 6),
                      Text(
                        'izzatirrof@gmail.com',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 12),
                      Icon(Icons.phone, color: Colors.white, size: 18),
                      SizedBox(width: 6),
                      Text(
                        '+62 813 5984 4557',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- Halaman Counter ----------------

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);
  void _decrementCounter() => setState(() => _counter--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // tombol back aktif
        title: const Text(
          'Counter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pinkAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Tekan tombol untuk menghitung:',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              const SizedBox(height: 5),
              Text('$_counter',
                  style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.red.shade700,
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 15),
                  FloatingActionButton(
                    backgroundColor: Colors.red.shade700,
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
