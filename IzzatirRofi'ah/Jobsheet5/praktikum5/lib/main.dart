import 'package:flutter/material.dart';

void main() {
  runApp(const Prak());
}

class Prak extends StatelessWidget {
  const Prak({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle, size: 48, color: Colors.white),
              const SizedBox(width: 8), // jarak antara ikon dan teks
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Flutternya Izzatir',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const Text(
                    'Subtitle',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  const FlutterLogo(
                    size: 48,
                    style: FlutterLogoStyle.horizontal,
                    textColor: Colors.white,
                  ), // Logo Flutter kecil
                  Image.asset(
                    'assets/images/polinema.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ],
          ),
          actions: const [
            Icon(Icons.settings),
            SizedBox(width: 8),
            Icon(Icons.search),
            SizedBox(width: 8),
          ],
        ),

        // BODY
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              // color: Colors.grey,
              // height: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                // color: Colors.grey,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text('You have pushed the button this many times:'),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star_half, color: Colors.amber),
                      Icon(Icons.star_border, color: Colors.amber),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button logic here
                    },
                    child: const Text('Press Me', style: TextStyle(fontSize: 16)),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your button logic here
                      print('Text Button Pressed');
                    },
                    child: const Text(
                      'Text Button',
                      style: TextStyle(fontSize: 16, color: Colors.white)
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Add your button logic here
                      print('Outlined Button Pressed');
                    },
                    child: const Text(
                      'Outlined Button',
                      style: TextStyle(fontSize: 16, color: Colors.white)
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Add your icon button logic here
                      print('Icon Button Pressed');
                    },
                    icon: const Icon(Icons.thumb_up, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),

        // FLOATING BUTTON
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'ini tombol',
          child: const Icon(Icons.add),
        ),

        // DRAWER
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),

        // BOTTOM NAVIGATION
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          selectedItemColor: Colors.purple,
        ),
      ),
    );
  }
}
