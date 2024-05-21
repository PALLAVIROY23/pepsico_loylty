// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Regular extends StatelessWidget {
  String text;
  double size;
  Color? color;
  int? lines;
  bool? start;
  bool isunderline;
  FontWeight? fontWeight;
  String? fontFamily;
  TextAlign? textAlign;
  List<Shadow>? shadows;
  TextDecorationStyle? decorationStyle;
  TextDecoration? decoration;
  double? letterSpacing;
  Regular({
    Key? key,
    required this.text,
    required this.size,
    required this.color,
    this.isunderline = false,
    this.letterSpacing = 1,
    this.shadows,
    this.fontWeight,
    this.lines,
    this.fontFamily,
    this.textAlign,
    this.start,
    this.decorationStyle,
    this.decoration,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (lines == null)
        ? Text(
            text,
            textAlign: (start != null) ? TextAlign.start : textAlign,
            style: TextStyle(
                fontSize: size,
                color: color,
                letterSpacing: letterSpacing,
                fontWeight: fontWeight ?? FontWeight.w400,
                fontFamily: fontFamily,
                shadows: shadows,
                decoration: isunderline ? TextDecoration.underline : decoration,
                decorationStyle: decorationStyle,
                decorationThickness: 2),
          )
        : Text(
            text,
            textAlign: (start != null) ? TextAlign.start : textAlign,
            overflow: TextOverflow.ellipsis,
            maxLines: lines,
            softWrap: false,
            style: TextStyle(
              fontSize: size,
              color: color,
              letterSpacing: letterSpacing,
              shadows: shadows,
              fontWeight: fontWeight ?? FontWeight.w400,
              fontFamily: fontFamily ?? "Poppins",
              decoration: isunderline ? TextDecoration.underline : decoration,
              decorationStyle: decorationStyle,
            ),
          );
  }
}
