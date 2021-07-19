import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_basics/ui/shared/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomMenuApp(),
          Spacer(),
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
