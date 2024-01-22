import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/navigation/pages.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(Pages.onBoardingView);
    });
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/demo_splash.png')),
    );
  }
}

