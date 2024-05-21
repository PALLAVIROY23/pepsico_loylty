// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyCustomButton extends StatefulWidget {
  Color textColor;
  Color firstColor;
  Color secondColor;
  String ButtonText;
  double buttonTopLeftRadius,
      ht,
      wd,
      buttonTopRightRadius,
      buttonBottomLeftRadius,
      buttonBottomRightRadius;
  double textSize;
  String FontFamily;
  String routeName;
  Color borderColor;
  VoidCallback onCustomButtonPressed;

  MyCustomButton(
      {required this.textColor,
      required this.firstColor,
      required this.secondColor,
      required this.ButtonText,
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
      required this.onCustomButtonPressed,
      this.boxShadow,
      this.linergrident,
      Key? key})
      : super(key: key);
  List<Color>? linergrident;
  List<BoxShadow>? boxShadow;

  @override
  State<MyCustomButton> createState() => _MyCustomButtonState();
}

class _MyCustomButtonState extends State<MyCustomButton>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward(from: 1);
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTap: () => widget.onCustomButtonPressed(),
      child: Transform.scale(
        scale: _scale,
        child: Container(
          height: widget.ht,
          width: widget.wd,
          decoration: BoxDecoration(
            boxShadow: widget.boxShadow,
            gradient: LinearGradient(
                colors: widget.linergrident ??
                    [widget.firstColor, widget.secondColor]),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(widget.buttonTopLeftRadius),
                topRight: Radius.circular(widget.buttonTopRightRadius),
                bottomLeft: Radius.circular(widget.buttonBottomLeftRadius),
                bottomRight: Radius.circular(widget.buttonBottomRightRadius)),
            border: Border.all(color: widget.borderColor),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              widget.ButtonText,
              style: TextStyle(
                  fontSize: widget.textSize,
                  color: widget.textColor,
                  fontFamily: widget.FontFamily),
            ),
          ),
        ),
      ),
    );
  }
}
