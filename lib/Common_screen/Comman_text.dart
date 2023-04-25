import 'package:flutter/material.dart';

class Comman_Text extends StatelessWidget {
  const Comman_Text({
    Key? key,
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.decoration,
    this.fontFamily,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  final text;
  final String? fontFamily;
  final color;
  final maxLines;
  final decoration;
  final overflow;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
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
