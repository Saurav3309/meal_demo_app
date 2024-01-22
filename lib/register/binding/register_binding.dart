import 'package:get/get.dart';
import 'package:meal/register/Controller/register_controller.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => RegisterController());  }

}