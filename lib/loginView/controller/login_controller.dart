import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meal/navigation/pages.dart';

class LoginController extends GetxController{
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  RxBool visible=true.obs ;

  void loginCondition() {
      // if(emailController.text.toLowerCase()=='Saurav@gmail.com'.toLowerCase() && passwordController.text=='12345678'){
      //   print('ok');
      // }else{
      //   print('fail');
      // }
    Get.offAllNamed(Pages.dashboard);


  }



}