import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'gallery_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomePage(),
  '/profile': (context) => const ProfilePage(),
  '/gallery': (context) => const GalleryPage(),
};