// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

buildLoadingIndicator() {
  return Center(child: CupertinoActivityIndicator(radius: 15));
}

buildDialogLoadingIndicator() {
  return Get.dialog(
    buildLoadingIndicator(),
    barrierDismissible: false,
  );
}

closeDialog() {
  return Get.back();
}
