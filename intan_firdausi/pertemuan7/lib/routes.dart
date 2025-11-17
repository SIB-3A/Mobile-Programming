import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'gallery_page.dart';

class Routes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String gallery = '/gallery';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case Routes.gallery:
        return MaterialPageRoute(builder: (_) => GalleryPage());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text('Route tidak ditemukan'))),
        );
    }
  }
}
