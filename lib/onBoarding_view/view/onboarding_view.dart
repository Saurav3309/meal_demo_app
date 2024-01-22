
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/onBoarding_view/component/pageview_item.dart';
import 'package:meal/onBoarding_view/controller/onboarding_controller.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  OnBoardingController controller = Get.find<OnBoardingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  controller: controller.pageViewController,
                  itemCount: controller.onBoardItem.length,
                  onPageChanged: (pageNo) {
                    controller.page.value = pageNo;
                    print(pageNo);
                  },
                  itemBuilder: (context, index) {
                    return PageViewItem(
                      img: controller.onBoardItem[index].img,
                      descr: controller.onBoardItem[index].description,
                    );
                  },
                ),
                Obx(() {
                  return Positioned(
                    left: 0,
                    right: 0,
                    bottom: Get.height/2.8,
                    child: DotsIndicator(
                      position: controller.page.value,
                      dotsCount: controller.onBoardItem.length,
                      decorator: const DotsDecorator(
                          activeColor: Colors.black,
                          color: Colors.yellow,
                          size:  Size.square(10)
                      ),
                    ),
                  );
                }),

              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              controller.nextPage();
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 50.0),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              width: Get.width,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Center(
                child: Obx(() {
                  return Text(
                    controller.page.value ==2 ? "Login" : "Continue",
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
