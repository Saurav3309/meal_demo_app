import 'package:get/get.dart';
import 'package:meal/dash/bottom_nav/binding/dash_binding.dart';
import 'package:meal/dash/bottom_nav/dash_view.dart';
import 'package:meal/dash/home_view/binding/home_binding.dart';
import 'package:meal/dash/profile_view/binding/profile_binding.dart';
import 'package:meal/loginView/login_view.dart';
import 'package:meal/navigation/pages.dart';
import 'package:meal/onBoarding_view/binding/onbording_binding.dart';
import 'package:meal/onBoarding_view/view/onboarding_view.dart';
import 'package:meal/register/register_view.dart';
import 'package:meal/register/binding/register_binding.dart';
import 'package:meal/splash/splash.dart';

import '../loginView/binding/login_binding.dart';

class Routes {
  static final routes = [
    GetPage(name: Pages.splash, page: () => const SplashView()),
    GetPage(
        name: Pages.onBoardingView,
        page: () => OnBoardingView(),
        binding: OnBoardBinding()),
    GetPage(
        name: Pages.loginView,
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(
        name: Pages.registerView,
        page: () => RegisterView(),
        binding: RegisterBinding()),
    GetPage(name: Pages.dashboard, page: () => DashBoardView(),bindings: [DashBinding(),HomeBinding(),ProfileBinding()]),
  ];
}
