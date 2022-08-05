import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  RoundIcon({this.onPressed, required this.color, this.child});
  final Function()? onPressed;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: child,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: color,
    );
  }
}
