import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_basics/ui/shared/custom_flat_button.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  _CounterProviderPageState createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int _counter = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomMenuApp(),
          Spacer(),
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
                'Contador: $_counter',
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
                onPressed: () => setState(
                  () => _counter++,
                ),
                icon: Icons.add_circle,
                color: Colors.green,
              ),
              CustomFlatButton(
                text: 'Decrementar',
                onPressed: () => setState(
                  () => _counter--,
                ),
                icon: Icons.remove_circle,
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
