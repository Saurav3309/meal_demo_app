import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewItem extends StatelessWidget {
  String? img;
  String? descr;

  PageViewItem({this.img, this.descr});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Image.asset(img!, width: Get.width,height: Get.height/2,),
            const SizedBox(
              height: 20,
            ),
            Text(
              descr.toString(),
              style: const TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
