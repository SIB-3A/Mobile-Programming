import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Index untuk halaman yang sedang aktif

  // List halaman yang akan dinavigasi
  final List<Widget> _pages = [
    const ProfilePage(), // Halaman Profil
    // Langsung arahkan ke Galeri, tapi karena kita menggunakan Named Routes
    // kita akan menggunakan Navigator.pushReplacementNamed saat navigasi
    Container(), // Placeholder, navigasi dilakukan melalui BottomNavigationBar
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Jika mengklik tab Galeri (index 1), kita navigasi ke rute galeri
    if (index == 1) {
      // Menggunakan Navigator untuk berpindah dari halaman profil ke galeri
      // pushReplacementNamed digunakan agar halaman 'Home' tidak menumpuk
      Navigator.pushReplacementNamed(context, AppRoutes.gallery);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Karena kita akan langsung navigasi ke halaman lain saat index=1, 
    // kita hanya akan menampilkan ProfilePage di awal
    return Scaffold(
      body: _pages.elementAt(_selectedIndex), 
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Galeri',
          ),
        ],
        currentIndex: _selectedIndex, 
        selectedItemColor: Theme.of(context).colorScheme.secondary, 
        onTap: _onItemTapped,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}