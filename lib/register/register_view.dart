import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/register/Controller/register_controller.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  var controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
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
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Create Your Account",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: controller.nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.confirmPasswordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    controller.registerUser();
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
                            "Sign Up",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text: ' Log In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ]),
                  ),
                ),
                // const Text("Don't have an account?",
                //   style: TextStyle(fontSize: 14, color: Colors.black),
                // ),
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
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () {},
                  backgroundColor: Colors.white70,
                  textColor: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.facebook,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ));
  }
}
