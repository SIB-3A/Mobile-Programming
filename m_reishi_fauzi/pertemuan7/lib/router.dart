import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart'; // tambahkan ini

void main() {
  setUrlStrategy(PathUrlStrategy());

  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(path: '/about', builder: (context, state) => AboutPage()),
    ],
  );

  runApp(MaterialApp.router(
    routerConfig: router,
    title: 'GoRouter Example',
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Router Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/about'),
          child: Text('Ke Halaman About'),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pop(),
          child: Text('Kembali'),
        ),
      ),
    );
  }
}
