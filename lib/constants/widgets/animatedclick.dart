// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyClick extends StatefulWidget {
  final Widget child;
  String? tooltipmessage;

  final VoidCallback onPressed;

  final double scaleFactor;

  final Duration duration;

  final bool stayOnBottom;
  Color? toottipbgColor;

  MyClick({
    Key? key,
    required this.child,
    required this.onPressed,
    this.scaleFactor = 1,
    this.tooltipmessage,
    this.toottipbgColor,
    this.duration = const Duration(milliseconds: 200),
    this.stayOnBottom = false,
  }) : super(key: key);

  @override
  _MyClickState createState() => _MyClickState();
}

class _MyClickState extends State<MyClick> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late double _scale;

  final GlobalKey _childKey = GlobalKey();


  Widget get child => widget.child;

  VoidCallback get onPressed => widget.onPressed;

  double get scaleFactor => widget.scaleFactor;

  Duration get duration => widget.duration;

  bool get _stayOnBottom => widget.stayOnBottom;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: duration,
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void didUpdateWidget(MyClick oldWidget) {
    if (oldWidget.stayOnBottom != _stayOnBottom) {
      if (!_stayOnBottom) {
        _reverseAnimation();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - (_controller.value * scaleFactor);
    return Tooltip(
      triggerMode: TooltipTriggerMode.longPress,
      preferBelow: false,
      excludeFromSemantics: true,
      message: widget.tooltipmessage ?? '',
      child: GestureDetector(
        supportedDevices: const <PointerDeviceKind>{
          PointerDeviceKind.mouse,
          PointerDeviceKind.stylus,
          PointerDeviceKind.touch,
          PointerDeviceKind.unknown,
          PointerDeviceKind.trackpad
        },
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        excludeFromSemantics: true,
        child: Transform.scale(
          key: _childKey,
          scale: _scale,
          child: child,
        ),
      ),
    );
  }

  /// Simple method called when we need to notify the user of a press event
  _triggerOnPressed() {
    onPressed();
  }

  /// We start the animation
  _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  /// We reverse the animation and notify the user of a press event
  _onTapUp(TapUpDetails details) {
    if (!_stayOnBottom) {
      Future.delayed(duration, () {
        _reverseAnimation();
      });
    }

    _triggerOnPressed();
  }




  _reverseAnimation() {
    if (mounted) {
      _controller.reverse();
    }
  }

}
