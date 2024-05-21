// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmer extends StatelessWidget {
  MyShimmer(
      {super.key, required this.child, this.baseColor, this.highlightColor});
  Widget child;
  Color? baseColor;
  Color? highlightColor;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.grey[300]!,
      highlightColor: highlightColor ?? Colors.grey[100]!,
      child: child,
    );
  }
}
