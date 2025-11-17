import 'package:flutter/material.dart';

//KODINGAN DARI PPT ERRROR
// void main() {
//   runApp( ListViewExample());
// }

// class ListViewExample extends StatelessWidget {
//   final List<String> items = ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'APi'];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Contoh ListView')),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Icon(Icons.code),
//             title: Text(items[index]),
//             onTap: () => print(' ${items[index]}'),
//           );
//         },
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  final List<String> items = ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'API'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contoh ListView')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.code),
            title: Text(items[index]),
            onTap: () => print('Klik: ${items[index]}'),
          );
        },
      ),
    );
  }
}

