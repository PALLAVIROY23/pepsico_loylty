// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Semibold extends StatelessWidget {
  String text;
  double size;
  Color color;
  bool? isunderline;
  bool? start;
  FontWeight? fontWeight;
  double wordSpacing;
  int lines;
  String? fontFamiy;
  Semibold(
      {Key? key,
      required this.text,
      required this.size,
      required this.color,
      this.isunderline,
      this.fontWeight,
      this.wordSpacing = 0.0,
      this.start,
      this.fontFamiy,
      this.lines = 1})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: (start != null) ? TextAlign.start : TextAlign.center,
      maxLines: lines,
      style: TextStyle(
        wordSpacing: wordSpacing,
        fontSize: size,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: fontFamiy ?? "Poppins",
        decoration: isunderline ?? false
            ? TextDecoration.underline
            : TextDecoration.none,
        decorationStyle: TextDecorationStyle.solid,
      ),
    );
  }
}
