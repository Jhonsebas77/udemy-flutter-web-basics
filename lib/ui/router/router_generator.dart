import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/pages/counter_page_provider.dart';
import 'package:flutter_web_basics/ui/pages/counter_page_statefull.dart';
import 'package:flutter_web_basics/ui/pages/page_not_found.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/statefull':
        return MaterialPageRoute(
          builder: (_) => CounterPageStateFull(),
        );
      case '/provider':
        return MaterialPageRoute(
          builder: (_) => CounterProviderPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => NotFoundPage(),
        );
    }
  }
}
