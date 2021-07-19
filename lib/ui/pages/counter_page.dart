import 'package:flutter/material.dart';

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
          Text(
            'Contador: $_counter',
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton.icon(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            icon: Icon(
              Icons.access_alarm,
            ),
            label: Text(
              'Incrementar',
            ),
          )
        ],
      ),
    );
  }
}
