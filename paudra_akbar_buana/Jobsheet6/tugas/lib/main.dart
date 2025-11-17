import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Tema aplikasi dengan warna custom dan Google Fonts
    return MaterialApp(
      title: 'Profil Mahasiswa & Galeri',
      // Gunakan Named Routes
      initialRoute: AppRoutes.home,
      routes: routes,

      theme: ThemeData(
        brightness: Brightness.light, // Menggunakan tema terang untuk kontras
        primaryColor: const Color(0xFF4DB6AC), // Teal 400
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF4DB6AC),
          secondary: const Color(0xFF7CB342), // Light Green 600
          surface: Colors.white,
          onSurface: Colors.black87,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.black87, displayColor: Colors.black87),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF4DB6AC),
          foregroundColor: Colors.white,
          titleTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        useMaterial3: true,
      ),
    );
  }
}
