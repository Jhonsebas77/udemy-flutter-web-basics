import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/router/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas App',
      initialRoute: '/statefull',
      onGenerateRoute: RouteGenerator.generateRoute,
      // onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}
