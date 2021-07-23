import 'package:fluro/fluro.dart';
import 'package:flutter_web_basics/ui/views/counter_view_statefull.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
    );
  }

  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) => CounterViewStateFull(),
  );
}
