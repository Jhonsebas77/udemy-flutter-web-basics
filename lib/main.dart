import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/router/router_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas App',
      initialRoute: '/statefull',
      onGenerateRoute: RouterGenerator.generateRoute,
      // onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}
