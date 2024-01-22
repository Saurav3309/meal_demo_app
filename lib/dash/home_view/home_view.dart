import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/dash/home_view/controller/home_controller.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
   var controller=Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: const Icon(Icons.search),
                hintText: "Search...",
                suffixIcon: const Icon(Icons.filter_alt_sharp),
                contentPadding: const EdgeInsets.all(8),
                fillColor: Colors.grey[500],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              itemCount: controller.foodList.length,
              itemBuilder: (context, index) {
                var item=controller.foodList[index];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      item.title.toString(),
                      style:
                          const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                     Text(
                      item.description.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    Image.asset(
                      item.image,
                      height: 200,
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10)
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}
