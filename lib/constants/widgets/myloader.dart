import 'package:flutter/material.dart';

class MyLoader {
  static showProgressIndicator(BuildContext context, double value) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(value: value),
        );
      },
    );
  }
}
