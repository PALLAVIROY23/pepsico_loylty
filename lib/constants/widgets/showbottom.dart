// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../color.extension.dart';

ShowBottomTab(BuildContext context, Size size,
    {double? height, Widget? child, bool isheightdy = false}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50))),
    builder: (context) => Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Center(
              child: Container(
                width: 150,
                height: 6,
                decoration: BoxDecoration(color: HexColor.fromHex("#fcc602")),
              ),
            ),
            const SizedBox(height: 10),
            child ?? Container()
          ],
        ),
      ),
    ),
  );
}

showBottomSheetTab(BuildContext context, Size size,
    {double? height, Widget? child, bool isheightdy = false}) {
  return showBottomSheet(
    context: context,
    backgroundColor: Colors.black.withOpacity(0.2),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50))),
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Center(
            child: Container(
              width: 150,
              height: 6,
              decoration: BoxDecoration(color: HexColor.fromHex("#FFFF00")),
            ),
          ),
          const SizedBox(height: 10),
          child ?? Container()
        ],
      ),
    ),
  );
}
