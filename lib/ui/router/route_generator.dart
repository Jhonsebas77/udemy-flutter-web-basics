import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_basics/ui/views/counter_view_provider.dart';
import 'package:flutter_web_basics/ui/views/counter_view_statefull.dart';
import 'package:flutter_web_basics/ui/views/view_not_found.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/statefull':
        return _fadeRoute(
          child: CounterViewStateFull(),
          routeName: '/statefull',
        );
      case '/provider':
        return _fadeRoute(
          child: CounterProviderView(),
          routeName: '/provider',
        );
      default:
        return _fadeRoute(
          child: NotFoundView(),
          routeName: '/404',
        );
    }
  }

  static PageRoute _fadeRoute({
    required Widget child,
    required String routeName,
  }) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              child: child,
              linearTransition: true,
            ),
    );
  }
}
