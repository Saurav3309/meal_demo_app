import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/navigation/pages.dart';
import 'package:meal/navigation/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Pages.splash,
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Get.defaultTransition,

    );
  }
}

