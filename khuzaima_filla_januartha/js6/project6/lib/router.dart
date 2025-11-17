import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '1stateless.dart';
import '2stateful.dart';
import '3singlechild.dart';
import '4column.dart';
import '5stack.dart';
import '6listview.dart';
import '7layouting.dart';
import '8listwidget.dart';
import '9gridview.dart';
import '10stylingposition.dart';

void main() {
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),

      GoRoute(path: '/1', builder: (context, state) => MyStatelessApp()),
      GoRoute(path: '/2', builder: (context, state) => GantiWarnaApp()),
      GoRoute(path: '/3', builder: (context, state) => SingleChildExample()),
      GoRoute(path: '/4', builder: (context, state) => ColumnExample()),
      GoRoute(path: '/5', builder: (context, state) => StackExample()),
      GoRoute(path: '/6', builder: (context, state) => ListViewExample()),
      GoRoute(path: '/7', builder: (context, state) => ProfileLayout()),
      GoRoute(path: '/8', builder: (context, state) => ListWidgetExample()),
      GoRoute(path: '/9', builder: (context, state) => GridViewApp()),
      GoRoute(path: '/10', builder: (context, state) => Style()),
    ],
  );

  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Router Example')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.go('/1'),
            child: Text('Stateless'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/2'),
            child: Text('Statefull'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/3'),
            child: Text('Single Child'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/4'),
            child: Text('Column'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/5'),
            child: Text('Stack'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/6'),
            child: Text('List View'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/7'),
            child: Text('Layouting'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/8'),
            child: Text('List Widget'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/9'),
            child: Text('Grid View'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/10'),
            child: Text('Styling & Positioning'),
          ),
        ],
      ),
    );
  }
}
