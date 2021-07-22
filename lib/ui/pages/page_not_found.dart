import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_flat_button.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404 Not Found',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'No se encontro la pagina que buscabas',
            ),
            CustomFlatButton(
              text: 'Regresar',
              onPressed: () => Navigator.pushNamed(
                context,
                '/statefull',
              ),
              icon: Icons.error_rounded,
            )
          ],
        ),
      ),
    );
  }
}
