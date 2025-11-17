import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
 final Router = GoRouter(
   routes: [
     GoRoute(path: '/', builder: (context, state) => HomePage()),
     GoRoute(path: '/about', builder: (context, state) => AboutPage()),
   ],
  );

  runApp(MaterialApp.router(
    routerConfig: Router,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Example')),
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
          child: Text('Kembali'),
          onPressed: () => context.go('/'),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, // opsional
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Named Route Example')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Navigator.pushNamed(context, '/second'),
//           child: Text('Ke Halaman Kedua'),
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Halaman Kedua')),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Kembali'),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//     );
//   }
// }
