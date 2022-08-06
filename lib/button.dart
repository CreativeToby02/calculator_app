import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  RoundIcon(
      {this.callback, required this.color, required this.text, this.style});

  final Function? callback;
  final Color color;
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 56.0,
      height: 56.0,
      onPressed: () => callback!(text),
      child: Text(
        text,
        style: style,
        textAlign: TextAlign.center,
      ),
      shape: CircleBorder(),
      color: color,
    );
  }
}
