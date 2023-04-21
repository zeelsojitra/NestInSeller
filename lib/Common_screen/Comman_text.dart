import 'package:flutter/material.dart';

class Comman_Text extends StatelessWidget {
  const Comman_Text(
      {Key? key,
      this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.decoration,
      this.fontFamily})
      : super(key: key);

  final text;
  final String? fontFamily;
  final color;
  final decoration;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      ),
    );
  }
}
