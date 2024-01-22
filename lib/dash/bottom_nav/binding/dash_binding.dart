import 'package:get/get.dart';
import 'package:meal/dash/bottom_nav/controller/dash_controller.dart';

class DashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashController());
  }

}