import 'package:flutter/material.dart';
import 'routes.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'gallery_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      initialRoute: '/',
      routes: appRoutes,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}
