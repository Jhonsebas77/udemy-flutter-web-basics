import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final Function onPressed;
  final double? width;

  const CustomFlatButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.icon,
    this.color = Colors.red,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          primary: color,
        ),
        onPressed: () => onPressed(),
        icon: Icon(
          icon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
