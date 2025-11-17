import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_page.dart';
import 'detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS_Mobile_Kelompok 5',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => HomePage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}