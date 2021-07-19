import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/pages/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas App',
      initialRoute: '/statefull',
      routes: {
        '/statefull': (_) => CounterPage(),
      },
    );
  }
}
