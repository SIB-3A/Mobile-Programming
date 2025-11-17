import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'gallery_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (context) => const HomePage(),
    '/profile': (context) => ProfilePage(),
    '/gallery': (context) => GalleryPage(),
  };
}