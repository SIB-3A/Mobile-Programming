import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(path: '/about', builder: (context, state) => AboutPage()),
    ],
  );

  runApp(
    MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        brightness: Brightness.light, 
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Router Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/about'),
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
      appBar: AppBar(title: Text('Halaman About')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: Text('Kembali ke Home'),
        ),
      ),
    );
  }
}
