import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_flat_button.dart';

class CounterViewStateFull extends StatefulWidget {
  const CounterViewStateFull({Key? key}) : super(key: key);

  @override
  _CounterViewStateFullState createState() => _CounterViewStateFullState();
}

class _CounterViewStateFullState extends State<CounterViewStateFull> {
  int _counter = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador StateFull',
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
      ],
    );
  }
}
