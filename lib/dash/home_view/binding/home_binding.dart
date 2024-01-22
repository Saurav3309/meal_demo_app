import 'package:get/get.dart';
import 'package:meal/dash/home_view/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
