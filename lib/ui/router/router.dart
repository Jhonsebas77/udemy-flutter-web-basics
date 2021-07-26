import 'package:fluro/fluro.dart';
import 'package:flutter_web_basics/ui/views/counter_view_provider.dart';
import 'package:flutter_web_basics/ui/views/counter_view_statefull.dart';
import 'package:flutter_web_basics/ui/views/view_not_found.dart';

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
      '/statefull/:base',
      handler: _stateFullCounterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: _providerCounterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.notFoundHandler = _pageNotFoundHandler;
  }

  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) => CounterViewStateFull(),
  );

  static Handler _stateFullCounterHandler = Handler(
    handlerFunc: (context, params) {
      String _getBase = params['base']?[0] ?? '0';
      String _base = (int.tryParse(_getBase) != null) ? _getBase : '0';
      return CounterViewStateFull(
        base: _base,
      );
    },
  );

  static Handler _providerCounterHandler = Handler(
    handlerFunc: (context, params) {
      String _getBase = params['base']?[0] ?? '15';
      return CounterProviderView(
        base: _getBase,
      );
    },
  );

  static Handler _pageNotFoundHandler = Handler(
    handlerFunc: (context, params) => NotFoundView(),
  );
}
