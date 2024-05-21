// ignore_for_file: must_be_immutable, non_constant_identifier_names
import 'package:flutter/material.dart';

import 'animatedclick.dart';

class CustomButton extends StatelessWidget {
  Color textColor;
  Color firstColor;
  Color secondColor;
  String ButtonText;
  double buttonTopLeftRadius,
      buttonTopRightRadius,
      buttonBottomLeftRadius,
      buttonBottomRightRadius;
  double textSize;
  double? ht, wd;
  String FontFamily;
  String routeName;
  Color borderColor;
  List<BoxShadow>? boxShadow;
  VoidCallback onCustomButtonPressed;
  double? latter_gapping;
  FontWeight? fontWeight;
  CustomButton(
      {required this.textColor,
      required this.firstColor,
      required this.secondColor,
      required this.ButtonText,
      this.fontWeight,
      required this.buttonBottomLeftRadius,
      required this.buttonBottomRightRadius,
      required this.buttonTopLeftRadius,
      required this.buttonTopRightRadius,
      required this.ht,
      required this.wd,
      required this.textSize,
      required this.FontFamily,
      required this.routeName,
      required this.borderColor,
      this.latter_gapping,
      required this.onCustomButtonPressed,
      this.boxShadow,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyClick(
      onPressed: onCustomButtonPressed,
      child: Container(
        height: ht,
        width: wd,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          gradient: LinearGradient(colors: [firstColor, secondColor]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(buttonTopLeftRadius),
              topRight: Radius.circular(buttonTopRightRadius),
              bottomLeft: Radius.circular(buttonBottomLeftRadius),
              bottomRight: Radius.circular(buttonBottomRightRadius)),
          border: Border.all(color: borderColor),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            ButtonText,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
                height: 1.2,
                letterSpacing: latter_gapping,
                fontSize: textSize,
                color: textColor,
                fontWeight: fontWeight,
                fontFamily: FontFamily),
          ),
        ),
      ),
    );
  }
}
