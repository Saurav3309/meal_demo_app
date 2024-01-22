import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/loginView/controller/login_controller.dart';
import 'package:meal/navigation/pages.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginView extends StatelessWidget {
  var controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBody: true,
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Icon(
              Icons.person,
              color: Colors.black,
              size: 100,
              // size: 100,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Login In Your Account",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return TextFormField(
                obscureText: controller.visible.value,
                controller: controller.passwordController,
                decoration: InputDecoration(
                    hintText: 'Enter password',
                    border: OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          controller.visible.value = !controller.visible.value;
                        },
                        child: Icon(controller.visible.value
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    prefixIcon: const Icon(Icons.lock)),
              );
            }),
            const SizedBox(
              height: 10,
            ),
            const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                controller.loginCondition();
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                width: Get.width,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Pages.registerView);
              },
              child: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "OR",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SocialLoginButton(
              borderRadius: 20.0,
              height: 45,
              buttonType: SocialLoginButtonType.google,
              onPressed: () {
                Get.toNamed(Pages.dashboard);
              },
              backgroundColor: Colors.white70,
              textColor: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            SocialLoginButton(
              borderRadius: 20.0,
              height: 45,
              buttonType: SocialLoginButtonType.facebook,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
