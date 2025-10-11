import 'package:flutter/material.dart';

void main() {
  runApp(const GridExample());
}

//GRID VIEW
class GridExample extends StatelessWidget {
  const GridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView Example')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Card(
              color: Colors.blue[100],
              margin: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

/*
void main() {
  runApp(const ListViewExample());
}

//LIST VIEW di scroll
class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  final List<String> items = const ['Flutter', 'Dart', 'Firebase', 'UI/UX', 'API'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Example')),
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
      ),
    );
  }
}
*/

/*
void main() {
  runApp(const ProfileLayout());
}

// ROW, COLUMN, CONTAINER
class ProfileLayout extends StatelessWidget {
  const ProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout Profil')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.jpeg'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Reza Angelina',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              'Flutter Developer',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
void main() {
  runApp(ListViewExample());
}

//LIST VIEW
class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh ListView')),
        body: ListView(
          children: [
            ListTile(title: Text('Item 1'), leading: Icon(Icons.star)),
            ListTile(title: Text('Item 2'), leading: Icon(Icons.favorite)),
            ListTile(title: Text('Item 3'), leading: Icon(Icons.home)),
          ],
        ),
      ),
    );
  }
}
*/

/*
void main() {
  runApp(StackExample());
}

//STACK
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh Stack')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blue[100],
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue[300],
              ),
              Text(
                'Tumpuk!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/

/*
void main() {
  runApp(ColumnExample());
}

//COLUMN
class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh Column')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini baris pertama'),
            Text('Ini baris kedua'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol'),
            ),
          ],
        ),
      ),
    );
  }
}
*/