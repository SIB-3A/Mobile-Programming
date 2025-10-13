import 'package:flutter/material.dart';

// Import halaman
import 'home_page.dart';
import 'gallery_page.dart';

// Mendefinisikan nama rute
class AppRoutes {
  static const String home = '/';
  static const String gallery = '/gallery';
}

// Map berisi semua rute yang tersedia di aplikasi
final Map<String, WidgetBuilder> routes = {
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.gallery: (context) => const GalleryPage(),
};
