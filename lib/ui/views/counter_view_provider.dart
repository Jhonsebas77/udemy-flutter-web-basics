import 'package:flutter/material.dart';
import 'package:flutter_web_basics/providers/counter_provider.dart';
import 'package:flutter_web_basics/ui/shared/custom_flat_button.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  final String base;

  CounterProviderView({
    Key? key,
    required this.base,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(base),
      child: _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador Provider',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w200,
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              'Contador: ${counterProvider.counter}',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar',
              onPressed: () => counterProvider.increment(),
              icon: Icons.add_circle,
              color: Colors.green,
            ),
            CustomFlatButton(
              text: 'Decrementar',
              onPressed: () => counterProvider.decrease(),
              icon: Icons.remove_circle,
            ),
          ],
        ),
      ],
    );
  }
}
