import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/navigation/pages.dart';
import 'package:meal/navigation/routes.dart';
import 'package:meal/onBoarding_view/model/onboarding_model.dart';

class OnBoardingController extends GetxController {
  List<OnBoardingModel> onBoardItem = <OnBoardingModel>[];
  final pageViewController = PageController(
    viewportFraction: 1.0,
  );

  var page = 0.obs;
  var demoText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan lacus vel facilisis volutpat.";

  @override
  void onInit() {
    onBoardItem.add(
      OnBoardingModel(
          img: "assets/images/on_board1.png", description: demoText),
    );
    onBoardItem.add(
      OnBoardingModel(
          img: "assets/images/on_board2.png", description: demoText),
    );
    onBoardItem.add(
      OnBoardingModel(
          img: "assets/images/on_board3.png", description: demoText),
    );
    super.onInit();
  }

  void nextPage() {
    if (page.value == 2) {
      Get.offAllNamed(Pages.loginView);
    } else {
      page.value = page.value + 1;
      pageViewController.animateToPage(page.value.toInt(),
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }
  }
}
