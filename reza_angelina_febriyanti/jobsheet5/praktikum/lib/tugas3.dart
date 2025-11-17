import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    ProfilePage(),
    CounterPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            selectedIndex == 0 ? 'Profil Mahasiswa' : 'Counter App',
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Aplikasi Flutter Sederhana")),
                );
              },
            ),
          ],
        ),

        // menampilkan halaman sesuai indeks
        body: pages[selectedIndex],

        // navigasi bawah
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: 'Counter',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade50,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(size: 80),
          const SizedBox(height: 16),
          ClipOval(
            child: Image.asset(
              'assets/reza.jpg',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Placeholder(
                  fallbackHeight: 120,
                  fallbackWidth: 120,
                  color: Colors.red,
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Reza Angelina Febriyanti',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text('NIM: 2341760015'),
          const Text('D4 - Sistem Informasi Bisnis'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.email, color: Colors.teal),
              SizedBox(width: 5),
              Text('reza@example.com'),
            ],
          ),
        ],
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void tambah() => setState(() => counter++);
  void kurang() => setState(() => counter--);
  void reset() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Counter: $counter",
            style: GoogleFonts.poppins(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: tambah, child: const Text('+')),
              const SizedBox(width: 10),
              ElevatedButton(onPressed: kurang, child: const Text('-')),
              const SizedBox(width: 10),
              OutlinedButton(onPressed: reset, child: const Text('Reset')),
            ],
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: tambah,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}