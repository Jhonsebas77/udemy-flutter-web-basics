import 'package:fluro/fluro.dart';
import 'package:flutter_web_basics/ui/views/counter_view_provider.dart';
import 'package:flutter_web_basics/ui/views/counter_view_statefull.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/statefull',
      handler: _stateFullCounterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: _providerCounterHandler,
      transitionType: TransitionType.fadeIn,
    );
  }

  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) => CounterViewStateFull(),
  );

  static Handler _stateFullCounterHandler = Handler(
    handlerFunc: (context, params) => CounterViewStateFull(),
  );

  static Handler _providerCounterHandler = Handler(
    handlerFunc: (context, params) => CounterProviderView(),
  );
}
