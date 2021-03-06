import 'package:flutter/material.dart';
import 'package:flutter_web_basics/locator.dart';
import 'package:flutter_web_basics/services/navigation_service.dart';
import 'package:flutter_web_basics/ui/layout/main_layout_page.dart';
import 'package:flutter_web_basics/ui/router/router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas App',
      initialRoute: '/',
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) => MainLayoutPage(
        child: child ?? CircularProgressIndicator(),
      ),
    );
  }
}
