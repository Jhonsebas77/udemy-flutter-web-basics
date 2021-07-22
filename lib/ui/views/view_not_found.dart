import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_flat_button.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
