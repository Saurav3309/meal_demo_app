import 'package:get/get.dart';
import 'package:meal/loginView/controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    // TODO: implement dependencies
  }

}