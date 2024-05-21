import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
   const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
   controller.count;
    return const Scaffold(
      backgroundColor: Color(0xffff22448c),
      body: Center(
        child: Image(image: AssetImage("assets/images/splash.png"))
      ),
    );
  }
}
