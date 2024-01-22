import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:meal/onBoarding_view/controller/onboarding_controller.dart';

class OnBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingController());
  }
}
