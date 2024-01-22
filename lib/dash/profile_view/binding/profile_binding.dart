import 'package:get/get.dart';
import 'package:meal/dash/profile_view/controller/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
