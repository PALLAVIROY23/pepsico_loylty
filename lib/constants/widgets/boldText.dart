// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class Boldtextview extends StatelessWidget {
  String text;
  double size;
  Color color;
  FontWeight? fontWeight;
  bool? start;
  String? fontFamily;

  Boldtextview(
      {Key? key,
      this.fontWeight,
      required this.text,
      required this.size,
      this.start,
      required this.color,
      this.fontFamily})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: (start != null) ? TextAlign.start : TextAlign.center,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontStyle: FontStyle.normal,
          fontWeight: fontWeight ?? FontWeight.bold,
          fontFamily: fontFamily ?? "Poppins",
          decoration: TextDecoration.none,
          decorationStyle: TextDecorationStyle.dashed,
        ));
  }
}
